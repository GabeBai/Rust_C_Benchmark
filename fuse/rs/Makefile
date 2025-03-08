all: fusers

fusers: ./fusers/src/main.rs
	cd fusers && cargo build --release

clean:
	rm -rf ./fusers/target

run:
	cd fusers && cargo run -- /mnt/fuse_rs/

stop:
	umount /mnt/fuse_rs
	rm -rf /mnt/fuse_rs/*

runfio:
	fio fio_rs.fio --directory=/mnt/fuse_rs
