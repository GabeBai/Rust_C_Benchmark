use std::ffi::OsStr;
use std::sync::Mutex;
use std::time::{Duration, SystemTime};

use fuser::{
    FileAttr, FileType, Filesystem, MountOption, ReplyAttr, ReplyCreate, ReplyData,
    ReplyDirectory, ReplyEntry, ReplyOpen, ReplyWrite, Request, TimeOrNow,
};

const TTL: Duration = Duration::from_secs(1); // Attribute cache timeout
const FILE_CAPACITY: usize = 1024 * 1024 * 1024; // 1GB Memory Storage

// Define root directory inode and file inode
const ROOT_INODE: u64 = 1;
const FILE_INODE: u64 = 2;

struct MemFile {
    data: Vec<u8>,
    size: usize,
}

impl MemFile {
    fn new() -> Self {
        Self {
            data: vec![0; FILE_CAPACITY],
            size: 0,
        }
    }
}

struct MemFS {
    file: Mutex<MemFile>,
}

impl MemFS {
    fn new() -> Self {
        Self {
            file: Mutex::new(MemFile::new()),
        }
    }

    fn file_attr(&self) -> FileAttr {
        let file = self.file.lock().unwrap();
        FileAttr {
            ino: FILE_INODE,
            size: file.size as u64,
            blocks: 1,
            atime: SystemTime::now(),
            mtime: SystemTime::now(),
            ctime: SystemTime::now(),
            crtime: SystemTime::now(), // Created time
            kind: FileType::RegularFile,
            perm: 0o644,
            nlink: 1,
            uid: unsafe { libc::getuid() },
            gid: unsafe { libc::getgid() },
            rdev: 0,
            flags: 0,
            blksize: 512,
        }
    }

    fn root_attr() -> FileAttr {
        FileAttr {
            ino: ROOT_INODE,
            size: 0,
            blocks: 0,
            atime: SystemTime::now(),
            mtime: SystemTime::now(),
            ctime: SystemTime::now(),
            crtime: SystemTime::now(),
            kind: FileType::Directory,
            perm: 0o755,
            nlink: 2,
            uid: unsafe { libc::getuid() },
            gid: unsafe { libc::getgid() },
            rdev: 0,
            flags: 0,
            blksize: 512,
        }
    }
}

impl Filesystem for MemFS {
    // Look up directory entry, only supports "test.txt" in the root directory.
    fn lookup(&mut self, _req: &Request<'_>, parent: u64, name: &OsStr, reply: ReplyEntry) {
        if parent == ROOT_INODE && name.to_str() == Some("test.txt") {
            reply.entry(&TTL, &self.file_attr(), 0);
        } else {
            reply.error(libc::ENOENT);
        }
    }

    // Return attributes based on inode.
    fn getattr(&mut self, _req: &Request<'_>, ino: u64, _fh: Option<u64>, reply: ReplyAttr) {
        match ino {
            ROOT_INODE => reply.attr(&TTL, &Self::root_attr()),
            FILE_INODE => reply.attr(&TTL, &self.file_attr()),
            _ => reply.error(libc::ENOENT),
        }
    }

    // Read directory contents: list ".", "..", and "test.txt".
    fn readdir(
        &mut self,
        _req: &Request<'_>,
        ino: u64,
        _fh: u64,
        offset: i64,
        mut reply: ReplyDirectory,
    ) {
        if ino != ROOT_INODE {
            reply.error(libc::ENOENT);
            return;
        }
        let entries = vec![
            (ROOT_INODE, FileType::Directory, "."),
            (ROOT_INODE, FileType::Directory, ".."),
            (FILE_INODE, FileType::RegularFile, "test.txt"),
        ];
        for (i, entry) in entries.into_iter().enumerate().skip(offset as usize) {
            reply.add(entry.0, (i + 1) as i64, entry.1, entry.2);
        }
        reply.ok();
    }

    // Open file
    fn open(&mut self, _req: &Request<'_>, ino: u64, flags: i32, reply: ReplyOpen) {
        if ino != FILE_INODE {
            reply.error(libc::ENOENT);
        } else {
            reply.opened(0, flags as u32);
        }
    }

    // Read file
    fn read(
        &mut self,
        _req: &Request<'_>,
        ino: u64,
        _fh: u64,
        offset: i64,
        size: u32,
        flags: i32,
        _lock_owner: Option<u64>,
        reply: ReplyData,
    ) {
        if ino != FILE_INODE {
            reply.error(libc::ENOENT);
            return;
        }
        let file = self.file.lock().unwrap();
        if offset as usize >= file.size {
            reply.data(&[]);
            return;
        }
        let end = std::cmp::min(file.size, offset as usize + size as usize);
        reply.data(&file.data[offset as usize..end]);
    }

    // Write into file
    fn write(
        &mut self,
        _req: &Request<'_>,
        ino: u64,
        _fh: u64,
        offset: i64,
        data: &[u8],
        flags: u32,
        write_flags: i32,
        _lock_owner: Option<u64>,
        reply: ReplyWrite,
    ) {
        if ino != FILE_INODE {
            reply.error(libc::ENOENT);
            return;
        }
        let mut file = self.file.lock().unwrap();
        let new_end = offset as usize + data.len();
        if new_end > file.data.len() {
            reply.error(libc::ENOSPC);
            return;
        }
        file.data[offset as usize..new_end].copy_from_slice(data);
        if new_end > file.size {
            file.size = new_end;
        }
        reply.written(data.len() as u32);
    }

    // Create file: only supports creating "test.txt" in the root directory.
    fn create(
        &mut self,
        _req: &Request<'_>,
        parent: u64,
        name: &OsStr,
        mode: u32,
        flags: u32,
        umask: i32,
        reply: ReplyCreate,
    ) {
        if parent == ROOT_INODE && name.to_str() == Some("test.txt") {
            let mut file = self.file.lock().unwrap();
            file.size = 0; // Clear data when creating a new file.
            let attr = self.file_attr();
            reply.created(&TTL, &attr, 0, 0, flags);
        } else {
            reply.error(libc::EEXIST);
        }
    }

    // Delete file
    fn unlink(&mut self, _req: &Request<'_>, parent: u64, name: &OsStr, reply: fuser::ReplyEmpty) {
        if parent == ROOT_INODE && name.to_str() == Some("test.txt") {
            let mut file = self.file.lock().unwrap();
            file.size = 0;
            reply.ok();
        } else {
            reply.error(libc::ENOENT);
        }
    }

    // Set file attributes (handle truncation using the size parameter)
    fn setattr(
        &mut self,
        _req: &Request<'_>,
        ino: u64,
        mode: Option<u32>,
        uid: Option<u32>,
        gid: Option<u32>,
        size: Option<u64>,
        atime: Option<TimeOrNow>,
        mtime: Option<TimeOrNow>,
        ctime: Option<SystemTime>,
        fh: Option<u64>,
        crtime: Option<SystemTime>,
        chgtime: Option<SystemTime>,
        bkuptime: Option<SystemTime>,
        flags: Option<u32>,
        reply: ReplyAttr,
    ) {
        if ino != FILE_INODE {
            reply.error(libc::ENOENT);
            return;
        }
        if let Some(new_size) = size {
            if new_size as usize > FILE_CAPACITY {
                reply.error(libc::EFBIG);
                return;
            }
            let mut file = self.file.lock().unwrap();
            file.size = new_size as usize;
        }
        reply.attr(&TTL, &self.file_attr());
    }
}

fn main() {
    let mountpoint = std::env::args_os()
        .nth(1)
        .expect("Mount error.");
    let fs = MemFS::new();
    fuser::mount2(
        fs,
        mountpoint,
        &[
            MountOption::FSName("fuse_rs".to_string()),
            MountOption::AutoUnmount,
            MountOption::DefaultPermissions,
        ],
    )
    .unwrap();
}
