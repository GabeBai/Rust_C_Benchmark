use std::fs::File;
use std::io::{Write, BufWriter, BufReader, Read};
use std::time::Instant;

fn io_intensive_test() {
    let file_path = "io_test.txt";
    let iterations = 100_000_000; // Write 100 million lines
    let data = "This is a sample line for IO-intensive testing.\n";

    // Write to file
    let start = Instant::now();
    let file = File::create(file_path).expect("Failed to create file");
    let mut writer = BufWriter::new(file);
    for _ in 0..iterations {
        writer.write_all(data.as_bytes()).expect("Write failed");
    }
    writer.flush().expect("Flush failed");
    println!("Writing {} lines took: {:?}", iterations, start.elapsed());

    // Read from file
    let start = Instant::now();
    let file = File::open(file_path).expect("Failed to open file");
    let mut reader = BufReader::new(file);
    let mut contents = String::new();
    reader.read_to_string(&mut contents).expect("Read failed");
    println!("Reading file took: {:?}", start.elapsed());
}

fn main() {
    for _ in 0..1 {
        io_intensive_test();
    }
}
