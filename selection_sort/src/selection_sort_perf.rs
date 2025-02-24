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

    // Initialize the array with random values
    let mut arr: Vec<i32> = (0..size).map(|_| rand::thread_rng().gen_range(0..10000)).collect();

    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > selection_sort_rs_perf_output.log 2>&1",
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

            sleep(Duration::from_secs(1));

            let start_time = Instant::now();
            selection_sort(&mut arr);
            let duration = start_time.elapsed();

            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            if let Ok(file) = File::open("selection_sort_rs_perf_output.log") {
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
