# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -O3 -ggdb

# Source files
SRC = binary_search.c
SRC_PERF = binary_search_perf.c

# Output binaries
OUT = binary_search_c
OUT_PERF = binary_search_perf_c

# Default target: Build both normal and perf-monitored versions
all: $(OUT) $(OUT_PERF)

# Rule to build normal binary search
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Rule to build binary search with perf monitoring
$(OUT_PERF): $(SRC_PERF)
	$(CC) $(CFLAGS) -o $(OUT_PERF) $(SRC_PERF)

# Rule to clean up generated files
clean:
	rm -f $(OUT) $(OUT_PERF)

# Phony targets to prevent conflicts with file names
.PHONY: all clean
