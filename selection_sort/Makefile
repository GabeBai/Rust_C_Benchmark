# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -O3

# Source files
SRC = selection_sort.c
SRC_PERF = selection_sort_perf.c

# Output binaries
OUT = selection_sort_c
OUT_PERF = selection_sort_perf_c

# Default target: Build both normal and perf-monitored versions
all: $(OUT) $(OUT_PERF)

# Rule to build normal selection sort
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Rule to build selection sort with perf monitoring
$(OUT_PERF): $(SRC_PERF)
	$(CC) $(CFLAGS) -o $(OUT_PERF) $(SRC_PERF)

# Rule to clean up generated files
clean:
	rm -f $(OUT) $(OUT_PERF)

# Phony targets to prevent conflicts with file names
.PHONY: all clean
