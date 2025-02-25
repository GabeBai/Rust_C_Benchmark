#include <iostream>
#include <chrono>
#include <cmath>

void cpu_intensive_test() {
    const long long iterations = 1000000000; // 1B
    double sum = 0.0;
    const double pi = 3.14159265358979323846;
    auto start = std::chrono::high_resolution_clock::now();
    for (long long i = 0; i < iterations; ++i) {
        double x = (i * pi) / 180.0;
        sum += std::sin(x) * std::cos(x);
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "CPU-intensive test: sum = " << sum 
              << ", time elapsed " << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";
}

int main() {
    for (size_t i = 0; i < 1; ++i) {
        cpu_intensive_test();
    }
    return 0;
}
