CC = gcc

CFLAGS += -std=gnu99 -g
CFLAGS += $(shell pkg-config --cflags fuse3)
LDFLAGS += $(shell pkg-config --libs fuse3)

all: fusec

fusec: fusec.c
	$(CC) $(CFLAGS) -o fusec fusec.c $(LDFLAGS)

clean:
	rm -f fusec

run:
	./fusec /mnt/fuse_c

stop:
	umount /mnt/fuse_c
	rm -rf /mnt/fuse_c/*

runfio:
	fio fio_c.fio --directory=/mnt/fuse_c
