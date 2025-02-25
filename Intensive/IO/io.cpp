#include <iostream>
#include <fstream>
#include <chrono>
#include <string>

void io_intensive_test() {
    const std::string file_path = "io_test.txt";
    const int iterations = 100000000; // Write 100 million lines
    const std::string data = "This is a sample line for IO-intensive testing.\n";

    // Write to file
    auto start = std::chrono::high_resolution_clock::now();
    std::ofstream outfile(file_path);
    if (!outfile) {
        std::cerr << "File creation failed.\n";
        return;
    }
    for (int i = 0; i < iterations; ++i) {
        outfile << data;
    }
    outfile.close();
    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "Writing " << iterations << " lines took: " 
              << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";

    // Read from file
    start = std::chrono::high_resolution_clock::now();
    std::ifstream infile(file_path);
    if (!infile) {
        std::cerr << "File opening failed.\n";
        return;
    }
    std::string line;
    while (std::getline(infile, line)) {
        // Read each line without processing
    }
    infile.close();
    end = std::chrono::high_resolution_clock::now();
    std::cout << "Reading file took: " 
              << std::chrono::duration<double>(end - start).count() 
              << " seconds.\n";
}

int main() {
    for (size_t i = 0; i < 1; ++i) {
        io_intensive_test();
    }
    return 0;
}
