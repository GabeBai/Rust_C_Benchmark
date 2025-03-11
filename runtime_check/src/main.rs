use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::{Command, exit};
use std::thread::sleep;
use std::time::{Duration, Instant};
use nix::unistd::{fork, ForkResult, Pid};
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::waitpid;
use std::cell::RefCell;
use libc::{clock_gettime, timespec, CLOCK_MONOTONIC};

// 普通结构体
struct MyStruct {
    value: i64,
}

impl MyStruct {
    fn new(value: i64) -> Self {
        Self { value }
    }

    fn increment(&mut self) {
        self.value += 1;
    }

    fn get_value(&self) -> i64 {
        self.value
    }
}

// 带 RefCell 的结构体
struct MyStructRefCell {
    value: RefCell<i64>,
}

impl MyStructRefCell {
    fn new(value: i64) -> Self {
        Self {
            value: RefCell::new(value),
        }
    }

    fn increment(&self) {
        *self.value.borrow_mut() += 1;
    }

    fn get_value(&self) -> i64 {
        *self.value.borrow()
    }
}

// 计算时间差（秒）
fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64 +
        (time1.tv_nsec - time0.tv_nsec) as f64 / 1_000_000_000.0
}

// 测试 MyStruct
fn test_mystruct(iterations: usize) -> f64 {
    let mut obj = MyStruct::new(0);
    let mut start_time = timespec { tv_sec: 0, tv_nsec: 0 };
    let mut end_time = timespec { tv_sec: 0, tv_nsec: 0 };

    unsafe { clock_gettime(CLOCK_MONOTONIC, &mut start_time) };

    for i in 0..iterations {
        obj.increment();
        if i % 1_000_000_000 == 0 { 
            sleep(Duration::from_nanos(1)); // 防止编译器优化
        }
    }

    unsafe { clock_gettime(CLOCK_MONOTONIC, &mut end_time) };

    let elapsed = diff_timespec(&end_time, &start_time);
    println!("MyStruct: final value = {}, time = {:.6} seconds", obj.get_value(), elapsed);
    elapsed
}

// 测试 MyStructRefCell
fn test_mystruct_refcell(iterations: usize) -> f64 {
    let obj = MyStructRefCell::new(0);
    let mut start_time = timespec { tv_sec: 0, tv_nsec: 0 };
    let mut end_time = timespec { tv_sec: 0, tv_nsec: 0 };

    unsafe { clock_gettime(CLOCK_MONOTONIC, &mut start_time) };

    for i in 0..iterations {
        obj.increment();
        if i % 1_000_000_000 == 0 {
            sleep(Duration::from_nanos(1));
        }
    }

    unsafe { clock_gettime(CLOCK_MONOTONIC, &mut end_time) };

    let elapsed = diff_timespec(&end_time, &start_time);
    println!("MyStructRefCell: final value = {}, time = {:.6} seconds", obj.get_value(), elapsed);
    elapsed
}

// 运行 `perf` 进行基准测试
fn run_perf_test(test_function: fn(usize) -> f64, iterations: usize, label: &str) {
    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > perf_output_normal.log 2>&1",
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

            sleep(Duration::from_millis(500)); // 让 `perf stat` 启动完成

            println!("\nRunning {} test with {} iterations...\n", label, iterations);
            let elapsed_time = test_function(iterations);

            // 终止 `perf`
            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            // 读取并打印 `perf` 输出
            if let Ok(file) = File::open("perf_output_normal.log") {
                let reader = BufReader::new(file);
                println!("\n[ Perf Stat Output for {} ]", label);
                for line in reader.lines() {
                    if let Ok(l) = line {
                        println!("{}", l);
                    }
                }
            } else {
                eprintln!("Failed to read perf stat log");
            }

            println!(
                "\nTime taken for {} with {} iterations: {:.6} seconds",
                label,
                iterations,
                elapsed_time
            );
        }
        Err(_) => {
            eprintln!("Fork failed!");
            exit(1);
        }
    }
}

fn run_refcell_perf_test(test_function: fn(usize) -> f64, iterations: usize, label: &str) {
    let parent_pid = std::process::id();

    match unsafe { fork() } {
        Ok(ForkResult::Child) => {
            let perf_command = format!(
                "perf stat -e cycles,instructions,cache-references,cache-misses -p {} > perf_output_refcell.log 2>&1",
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

            sleep(Duration::from_millis(500)); // 让 `perf stat` 启动完成

            println!("\nRunning {} test with {} iterations...\n", label, iterations);
            let elapsed_time = test_function(iterations);

            // 终止 `perf`
            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

            // 读取并打印 `perf` 输出
            if let Ok(file) = File::open("perf_output_refcell.log") {
                let reader = BufReader::new(file);
                println!("\n[ Perf Stat Output for {} ]", label);
                for line in reader.lines() {
                    if let Ok(l) = line {
                        println!("{}", l);
                    }
                }
            } else {
                eprintln!("Failed to read perf stat log");
            }

            println!(
                "\nTime taken for {} with {} iterations: {:.6} seconds",
                label,
                iterations,
                elapsed_time
            );
        }
        Err(_) => {
            eprintln!("Fork failed!");
            exit(1);
        }
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let iterations: usize = if args.len() == 2 {
        args[1].parse().unwrap_or_else(|_| {
            eprintln!("Invalid number of iterations, using default (1_000_000)");
            1_000_000
        })
    } else {
        1_000_000
    };

    run_perf_test(test_mystruct, iterations, "MyStruct");
    run_refcell_perf_test(test_mystruct_refcell, iterations, "MyStructRefCell");
}
