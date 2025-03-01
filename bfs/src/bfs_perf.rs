use rand::Rng;
use std::collections::VecDeque;
use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::{Command, exit};
use std::thread::sleep;
use std::time::{Duration, Instant};
use nix::unistd::{fork, ForkResult, Pid};
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::waitpid;

fn create_adj_matrix(n: usize) -> Vec<Vec<i32>> {
    vec![vec![0; n]; n]
}

fn generate_random_graph(adj_matrix: &mut Vec<Vec<i32>>, n: usize) {
    let mut rng = rand::thread_rng();
    for i in 0..n {
        for j in (i + 1)..n {
            if rng.gen_bool(0.5) {
                adj_matrix[i][j] = 1;
                adj_matrix[j][i] = 1;
            }
        }
    }
}

fn bfs(adj_matrix: &Vec<Vec<i32>>, n: usize, start: usize) {
    let mut visited = vec![false; n];
    let mut queue = VecDeque::new();

    visited[start] = true;
    queue.push_back(start);

    while let Some(current) = queue.pop_front() {
        // println!("Visited node {}", current);

        for (i, &is_connected) in adj_matrix[current].iter().enumerate() {
            if is_connected == 1 && !visited[i] {
                visited[i] = true;
                queue.push_back(i);
            }
        }
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 2 {
        eprintln!("Usage: {} <number_of_nodes>", args[0]);
        exit(1);
    }

    let size: usize = match args[1].parse() {
        Ok(n) if n > 0 => n,
        _ => {
            eprintln!("Invalid number of nodes. Please enter a positive integer.");
            exit(1);
        }
    };

    let mut adj_matrix = create_adj_matrix(size);
    generate_random_graph(&mut adj_matrix, size);

    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > bfs_rs_perf_output.log 2>&1",
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
            bfs(&adj_matrix, size, 0);
            let duration = start_time.elapsed();

            // Stop `perf stat` immediately after sorting is done
            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            if let Ok(file) = File::open("bfs_rs_perf_output.log") {
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
                "\nTime taken to search graph of size {}: {:.6} seconds",
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
