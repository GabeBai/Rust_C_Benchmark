# FUSE Evaluation

## Dependencies

### Install libfuse for C
Please follow the [libfuse](https://github.com/libfuse/libfuse) repository.

### Install fuser for Rust
Please follow the [fuser](https://github.com/cberner/fuser) repository.

## How to Run

### Test FUSE with C Implementation
```sh
cd c

make all
make run
make runfio  
# You will see the fio result in the terminal

make stop
```

### Test FUSE with Rust Implementation
```sh
cd rs

make all
make run
```

#### Open another terminal
```sh
make runfio  
# You will see the fio result in the terminal

make stop
```
