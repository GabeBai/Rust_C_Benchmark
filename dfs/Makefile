# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -O3

# Source files
SRC = dfs.c
SRC_PERF = dfs_perf.c

# Output binaries
OUT = dfs_c
OUT_PERF = dfs_perf_c

# Default target: Build both dfs_c and dfs_perf_c
all: $(OUT) $(OUT_PERF)

# Rule to build dfs_c
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Rule to build dfs_perf_c (DFS with perf monitoring)
$(OUT_PERF): $(SRC_PERF)
	$(CC) $(CFLAGS) -o $(OUT_PERF) $(SRC_PERF)

# Rule to clean up generated files
clean:
	rm -f $(OUT) $(OUT_PERF)

# Phony targets to prevent conflicts with file names
.PHONY: all clean
