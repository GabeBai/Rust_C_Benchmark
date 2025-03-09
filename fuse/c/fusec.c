#define FUSE_USE_VERSION 31
#include <fuse3/fuse.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>

// A simple file system
static char file_data[1024 * 1024 * 1024]; // 1GB file
static size_t file_size = 0;
static const char *file_path = "/test.txt";

static int memfs_getattr(const char *path, struct stat *stbuf, struct fuse_file_info *fi)
{
    memset(stbuf, 0, sizeof(struct stat));
    if(strcmp(path, "/") == 0){
        stbuf->st_mode = S_IFDIR | 0755;
        stbuf->st_nlink = 2;
    } else if(strcmp(path, file_path) == 0){
        stbuf->st_mode = S_IFREG | 0644;
        stbuf->st_nlink = 1;
        stbuf->st_size = file_size;
    } else {
        return -ENOENT;
    }
    return 0;
}

static int memfs_readdir(const char *path, void *buf, fuse_fill_dir_t filler,
                         off_t offset, struct fuse_file_info *fi, enum fuse_readdir_flags flags)
{
    if(strcmp(path, "/") != 0)
        return -ENOENT;
    filler(buf, ".", NULL, 0, 0);
    filler(buf, "..", NULL, 0, 0);
    filler(buf, file_path + 1, NULL, 0, 0);
    return 0;
}

static int memfs_open(const char *path, struct fuse_file_info *fi)
{
    if(strcmp(path, file_path) != 0)
        return -ENOENT;
    return 0;
}

static int memfs_read(const char *path, char *buf, size_t size, off_t offset,
                      struct fuse_file_info *fi)
{
    if(strcmp(path, file_path) != 0)
        return -ENOENT;
    if(offset < file_size){
        if(offset + size > file_size)
            size = file_size - offset;
        memcpy(buf, file_data + offset, size);
    } else {
        size = 0;
    }
    return size;
}

static int memfs_write(const char *path, const char *buf, size_t size, off_t offset,
                       struct fuse_file_info *fi)
{
    if(strcmp(path, file_path) != 0)
        return -ENOENT;
    if(offset + size > sizeof(file_data))
        return -ENOSPC;
    memcpy(file_data + offset, buf, size);
    if(offset + size > file_size)
        file_size = offset + size;
    return size;
}

static int memfs_create(const char *path, mode_t mode, struct fuse_file_info *fi)
{
    if(strcmp(path, file_path) != 0)
        return -EEXIST;
    file_size = 0; // Clean the file when creating
    return 0;
}

static int memfs_unlink(const char *path)
{
    if(strcmp(path, file_path) != 0)
        return -ENOENT;
    file_size = 0; // Clean all the data when deleting
    return 0;
}

static int memfs_truncate(const char *path, off_t size, struct fuse_file_info *fi)
{
    if (strcmp(path, file_path) != 0)
        return -ENOENT;
    if (size > sizeof(file_data))
        return -EFBIG;  // File too large
    file_size = size;
    return 0;
}

static struct fuse_operations memfs_oper = {
    .getattr = memfs_getattr,
    .readdir = memfs_readdir,
    .open    = memfs_open,
    .read    = memfs_read,
    .write   = memfs_write,
    .create  = memfs_create,
    .unlink  = memfs_unlink,
    .truncate = memfs_truncate,
};

int main(int argc, char *argv[])
{
    return fuse_main(argc, argv, &memfs_oper, NULL);
}
