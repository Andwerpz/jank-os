#include <iostream>
#include <fstream>
#include <cstdint>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: xor_checksum <filename>\n";
        return 1;
    }

    const char* filename = argv[1];
    std::ifstream file(filename, std::ios::binary);
    if (!file) {
        std::cerr << "Error opening file: " << filename << "\n";
        return 1;
    }

    uint8_t checksum = 0;
    char byte;
    while (file.get(byte)) {
        checksum ^= static_cast<uint8_t>(byte);
    }

    std::cout << "XOR checksum: " << static_cast<int>(checksum) << "\n";

    return 0;
}
