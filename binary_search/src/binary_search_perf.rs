use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::{Command, exit};
use std::thread::sleep;
use std::time::{Duration, Instant};
use nix::unistd::{fork, ForkResult, Pid};
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::waitpid;

pub fn binary_search(k: i32, items: &[i32]) -> i32 {
    if items.is_empty() {
        return -1;
    }

    let mut lo: isize = 0;
    let mut hi: isize = items.len() as isize - 1;

    while lo <= hi {
        let mid = lo + (hi - lo) / 2;
        let mid_val = items[mid as usize];

        if mid_val == k {
            return mid as i32;
        }
        if mid_val > k {
            hi = mid - 1;
        } else {
            lo = mid + 1;
        }
    }
    -1
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

    let arr: Vec<i32> = (1..=size as i32).collect();

    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > binary_search_rs_perf_output.log 2>&1",
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

            let mut time_elapsed = 0.0;
            for &target in &arr {
                let start_time = Instant::now();
                binary_search(target, &arr);
                let end_time = start_time.elapsed();
                time_elapsed += end_time.as_secs_f64();
            }

            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            if let Ok(file) = File::open("binary_search_rs_perf_output.log") {
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
                "\nTime taken to search array of size {}: {:.6} seconds",
                size,
                time_elapsed
            );
        }
        Err(_) => {
            eprintln!("Fork failed!");
            exit(1);
        }
    }
}
