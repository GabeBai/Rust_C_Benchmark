# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -O3

# Source files
SRC = bfs.c
SRC_PERF = bfs_perf.c

# Output binaries
OUT = bfs_c
OUT_PERF = bfs_perf_c

# Default target: Build both bfs_c and bfs_perf_c
all: $(OUT) $(OUT_PERF)

# Rule to build bfs_c
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Rule to build bfs_perf_c
$(OUT_PERF): $(SRC_PERF)
	$(CC) $(CFLAGS) -o $(OUT_PERF) $(SRC_PERF)

# Clean up generated files
clean:
	rm -f $(OUT) $(OUT_PERF)

# Ensure `clean` does not conflict with a file named "clean"
.PHONY: all clean
