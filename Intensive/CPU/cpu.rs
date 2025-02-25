use std::time::Instant;
use std::f64::consts::PI;

fn cpu_intensive_test() {
    let iterations = 1_000_000_000; // 1B
    let mut sum = 0.0;
    let start = Instant::now();
    for i in 0..iterations {
        let x = (i as f64) * PI / 180.0;
        sum += x.sin() * x.cos();
    }
    println!("CPU-intensive test: sum = {}, time elapsed {:?}", sum, start.elapsed());
}

fn main() {
    for _ in 0..1 {
        cpu_intensive_test();
    }
}
