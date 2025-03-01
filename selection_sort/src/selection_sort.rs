use std::env;
use std::process::exit;
use libc::{clock_gettime, timespec, CLOCK_MONOTONIC, srand, rand};
use std::time::{Instant};

fn selection_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n - 1 {
        let mut min_idx = i;
        for j in i + 1..n {
            if arr[j] < arr[min_idx] {
                min_idx = j;
            }
        }
        arr.swap(i, min_idx);
    }
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64 +
        (time1.tv_nsec - time0.tv_nsec) as f64 / 1_000_000_000.0
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        eprintln!("Usage: {} <array_size>", args[0]);
        exit(1);
    }

    let size: usize = match args[1].parse() {
        Ok(n) if n > 0 => n,
        _ => {
            eprintln!("Error: array size must be a positive integer.");
            exit(1);
        }
    };

    unsafe {
        srand(10000);
    }

    let mut arr: Vec<i32> = (0..size).map(|_| unsafe { rand() }).collect();

    let mut start_time: timespec = timespec { tv_sec: 0, tv_nsec: 0 };
    unsafe {
        clock_gettime(CLOCK_MONOTONIC, &mut start_time);
    }

    selection_sort(&mut arr);

    let mut end_time: timespec = timespec { tv_sec: 0, tv_nsec: 0 };
    unsafe {
        clock_gettime(CLOCK_MONOTONIC, &mut end_time);
    }

    let time_elapsed = diff_timespec(&end_time, &start_time);

    unsafe {
        println!(
            "Time taken to sort the array of size {}: {:.6} seconds, with *TODO* iterations",
            size,
            time_elapsed
        );
    }
}