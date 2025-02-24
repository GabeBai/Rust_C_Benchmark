# Compiler
CC = clang

# Compiler flags
CFLAGS = -Wall -O3

# Source files
SRC = quicksort.c
SRC_PERF = quicksort_perf.c

# Output binaries
OUT = quicksort_c
OUT_PERF = quicksort_perf_c

# Rule to build both binaries
all: $(OUT) $(OUT_PERF)

# Rule to build normal quicksort binary
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)

# Rule to build perf-enabled quicksort binary
$(OUT_PERF): $(SRC_PERF)
	$(CC) $(CFLAGS) -o $(OUT_PERF) $(SRC_PERF)

# Rule to clean up generated files
clean:
	rm -f $(OUT) $(OUT_PERF) 

# Phony targets (to avoid conflicts with files named "clean" or "all")
.PHONY: all clean
