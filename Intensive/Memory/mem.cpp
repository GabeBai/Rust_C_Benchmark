#include <iostream>
#include <vector>
#include <chrono>
#include <cstdint>
#include <algorithm>

void memory_intensive_test() {
    const size_t n = 1000000000; // 1 billion bytes
    std::vector<uint8_t> vec_a(n, 0);
    std::vector<uint8_t> vec_b(n, 0);

    // Initialize vec_a
    auto start = std::chrono::high_resolution_clock::now();
    for (size_t i = 0; i < n; ++i) {
        vec_a[i] = static_cast<uint8_t>(i % 256);
    }
    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "Initialization time: " 
              << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";

    // Copy memory from vec_a to vec_b
    start = std::chrono::high_resolution_clock::now();
    std::copy(vec_a.begin(), vec_a.end(), vec_b.begin());
    end = std::chrono::high_resolution_clock::now();
    std::cout << "Memory copy time: " 
              << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";

    // Modify vec_b (increment each byte by 1)
    start = std::chrono::high_resolution_clock::now();
    for (auto &val : vec_b) {
        val = static_cast<uint8_t>(val + 1);
    }
    end = std::chrono::high_resolution_clock::now();
    std::cout << "Memory modification time: " 
              << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";
}

int main() {
    for (size_t i = 0; i < 1; ++i) {
        memory_intensive_test();
    }
    return 0;
}
