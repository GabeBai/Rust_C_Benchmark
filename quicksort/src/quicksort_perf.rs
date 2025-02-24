use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::{Command, exit};
use std::thread::sleep;
use std::time::{Duration, Instant};
use nix::unistd::{fork, ForkResult, Pid};
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::waitpid;
use rand::Rng;

fn swap(arr: &mut [i32], a: usize, b: usize) {
    arr.swap(a, b);
}

fn partition(arr: &mut [i32], low: usize, high: usize) -> usize {
    let pivot = arr[high];
    let mut i = low;

    for j in low..high {
        if arr[j] <= pivot {
            swap(arr, i, j);
            i += 1;
        }
    }

    swap(arr, i, high);
    i
}

fn quick_sort(arr: &mut [i32], low: usize, high: usize) {
    if low < high {
        let pi = partition(arr, low, high);
        if pi > 0 { quick_sort(arr, low, pi - 1); }
        quick_sort(arr, pi + 1, high);
    }
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

    let mut arr: Vec<i32> = (0..size).map(|_| rand::thread_rng().gen_range(0..10000)).collect();
    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            // Start `perf stat` to monitor only quick_sort()
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > quicksort_rs_perf_output.log 2>&1",
                parent_pid
            );

            Command::new("sh")
                .arg("-c")
                .arg(perf_command)
                .spawn()
                .expect("Failed to start perf stat");

            exit(0);
        }
        Ok(ForkResult::Parent { child }) => {
            let child_pid = child.as_raw();
            
            sleep(Duration::from_millis(500));  // Allow `perf stat` to start properly

            let start_time = Instant::now();
            quick_sort(&mut arr, 0, size - 1);
            let duration = start_time.elapsed();

            // Stop `perf stat` immediately after sorting is done
            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            // Now read and print perf output (ensuring it doesn't interfere with timing)
            if let Ok(file) = File::open("quicksort_rs_perf_output.log") {
                let reader = BufReader::new(file);
                println!("\n[ Perf Stat Output ]");
                for line in reader.lines() {
                    if let Ok(l) = line {
                        println!("{}", l);
                    }
                }
            } else {
                eprintln!("Failed to read perf stat log");
            }

            // Print sorting time
            println!(
                "\nTime taken to sort the array of size {}: {:.6} seconds",
                size,
                duration.as_secs_f64()
            );
        }
        Err(_) => {
            eprintln!("Fork failed!");
            exit(1);
        }
    }
}
