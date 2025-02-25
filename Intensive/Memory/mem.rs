use std::time::Instant;

fn memory_intensive_test() {
    let n = 1_000_000_000; // Allocate 1 billion bytes
    let mut vec_a = vec![0u8; n];
    let mut vec_b = vec![0u8; n];

    // Initialize vec_a
    let start = Instant::now();
    for i in 0..n {
        vec_a[i] = (i % 256) as u8;
    }
    println!("Initialization time: {:?}", start.elapsed());

    // Copy memory from vec_a to vec_b
    let start = Instant::now();
    vec_b.copy_from_slice(&vec_a);
    println!("Memory copy time: {:?}", start.elapsed());

    // Modify vec_b (increment each byte by 1)
    let start = Instant::now();
    for byte in vec_b.iter_mut() {
        *byte = byte.wrapping_add(1);
    }
    println!("Memory modification time: {:?}", start.elapsed());
}

fn main() {
    for _ in 0..1 {
        memory_intensive_test();
    }
}
