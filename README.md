# Rust_C_Benchmark

A collection of benchmarks to compare the performance of algorithms implemented in Rust versus C.

## Overview

This repository contains multiple implementations of common algorithms in both Rust and C. The goal is to benchmark their performance, compare efficiency between the two languages, and analyze results using profiling tools such as flamegraphs.

## Directory Structure

Each directory in the repository targets a specific algorithm or operation:

- **array_sum/** – Benchmark for summing elements of an array.
- **bfs/** – Implementations and benchmarks for Breadth-First Search.
- **binary_search/** – Benchmark for binary search algorithms.
- **dfs/** – Implementations for Depth-First Search.
- **fuse/** – Benchmark for fused operations (if applicable).
- **quicksort/** – Comparison of quicksort implementations.
- **runtime_check/** – Benchmarks related to runtime safety and checks.
- **selection_sort/** – Benchmark for selection sort algorithms.

Each folder typically contains:
- Source code in both Rust and C.
- Makefiles (or Cargo.toml for Rust) for building the benchmarks.
- Performance logs and flamegraph outputs (e.g., `.svg` files) for profiling analysis.

## Prerequisites

Before running the benchmarks, ensure you have the following installed:

- **Rust**: Install from [rustup.rs](https://rustup.rs) if not already set up.
- **C Compiler**: GCC.
- **Make**: To build the C projects using provided Makefiles.
- **perf**: Linux performance analysis tool.
- **Flamegraph**: A tool to generate flamegraphs from perf data. Check out [FlameGraph on GitHub](https://github.com/brendangregg/FlameGraph) for installation instructions.

## Getting Started

1. **Clone the Repository:**

```bash
git clone https://github.com/GabeBai/Rust_C_Benchmark.git
cd Rust_C_Benchmark
```

2. **Build a Benchmark:**

Navigate to the directory of the desired benchmark (e.g., `bfs`):

```bash
cd bfs
```

- **For Rust code:**

```bash
cargo build --release
```

- **For C code:**

```bash
make
```

3. **Run and Profile the Benchmark:**

Run the benchmark executable to generate performance data. For example:

```bash
./bfs
```

To profile using `perf` and generate a flamegraph:

```bash
perf record -F 99 -a -g -- ./your_benchmark_executable
perf script | stackcollapse-perf.pl > out.folded
flamegraph.pl out.folded > flamegraph.svg
```

## Analysis

The repository allows you to compare the performance between Rust and C implementations by reviewing:

- **Execution Times:** How fast each implementation runs.
- **CPU Usage:** Profiling data to see where time is spent.
- **Flamegraphs:** Visual representations of the call stack to identify bottlenecks.

These insights can help you understand the trade-offs between Rust’s safety features and C’s low-level optimizations.

## Contributing

Contributions are welcome! If you have suggestions, improvements, or additional benchmarks to add, please feel free to submit a pull request or open an issue.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [Rust Programming Language](https://www.rust-lang.org/)
- [C Programming Language](https://en.wikipedia.org/wiki/C_(programming_language))
- [perf Wiki](https://perf.wiki.kernel.org/index.php/Main_Page)
- [Flamegraph](https://github.com/brendangregg/FlameGraph)