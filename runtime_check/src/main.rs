use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use std::process::{Command, exit};
use std::thread::sleep;
use std::time::{Duration, Instant};
use nix::unistd::{fork, ForkResult, Pid};
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::waitpid;
use std::rc::Rc;
use std::cell::RefCell;
use libc::{clock_gettime, timespec, CLOCK_MONOTONIC};

struct TreeNode {
    value: i64,
    left: Option<Box<TreeNode>>,
    right: Option<Box<TreeNode>>,
}

impl TreeNode {
    fn new(value: i64) -> Self {
        Self {
            value,
            left: None,
            right: None,
        }
    }

    fn insert(&mut self, value: i64) {
        if value < self.value {
            match &mut self.left {
                Some(left) => left.insert(value),
                None => self.left = Some(Box::new(TreeNode::new(value))),
            }
        } else {
            match &mut self.right {
                Some(right) => right.insert(value),
                None => self.right = Some(Box::new(TreeNode::new(value))),
            }
        }
    }

    fn sum(&self) -> i64 {
        let left_sum = self.left.as_ref().map_or(0, |node| node.sum());
        let right_sum = self.right.as_ref().map_or(0, |node| node.sum());
        self.value + left_sum + right_sum
    }
}

struct TreeNodeRefCell {
    value: i64,
    left: RefCell<Option<Rc<TreeNodeRefCell>>>,
    right: RefCell<Option<Rc<TreeNodeRefCell>>>,
}

impl TreeNodeRefCell {
    fn new(value: i64) -> Rc<Self> {
        Rc::new(Self {
            value,
            left: RefCell::new(None),
            right: RefCell::new(None),
        })
    }

    fn insert(self_rc: &Rc<Self>, value: i64) {
        if value < self_rc.value {
            let mut left = self_rc.left.borrow_mut();
            match &*left {
                Some(left_node) => TreeNodeRefCell::insert(left_node, value),
                None => *left = Some(TreeNodeRefCell::new(value)),
            }
        } else {
            let mut right = self_rc.right.borrow_mut();
            match &*right {
                Some(right_node) => TreeNodeRefCell::insert(right_node, value),
                None => *right = Some(TreeNodeRefCell::new(value)),
            }
        }
    }

    fn sum(self_rc: &Rc<Self>) -> i64 {
        let left_sum = self_rc.left.borrow().as_ref().map_or(0, |node| TreeNodeRefCell::sum(node));
        let right_sum = self_rc.right.borrow().as_ref().map_or(0, |node| TreeNodeRefCell::sum(node));
        self_rc.value + left_sum + right_sum
    }
}

fn test_tree(iterations: usize) -> f64 {
    let mut tree = TreeNode::new(0);
    let start_time = Instant::now();

    for i in 1..=iterations {
        tree.insert(i as i64);
    }

    let sum = tree.sum();
    let elapsed = start_time.elapsed().as_secs_f64();
    println!("Tree: final sum = {}, time = {:.6} seconds", sum, elapsed);
    elapsed
}

fn test_tree_refcell(iterations: usize) -> f64 {
    let tree = TreeNodeRefCell::new(0);
    let start_time = Instant::now();

    for i in 1..=iterations {
        TreeNodeRefCell::insert(&tree, i as i64);
    }

    let sum = TreeNodeRefCell::sum(&tree);
    let elapsed = start_time.elapsed().as_secs_f64();
    println!("TreeRefCell: final sum = {}, time = {:.6} seconds", sum, elapsed);
    elapsed
}

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

            sleep(Duration::from_millis(500)); 

            println!("\nRunning {} test with {} iterations...\n", label, iterations);
            let elapsed_time = test_function(iterations);

            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

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

            sleep(Duration::from_millis(500));

            println!("\nRunning {} test with {} iterations...\n", label, iterations);
            let elapsed_time = test_function(iterations);

            let _ = kill(Pid::from_raw(child_pid), Signal::SIGINT);
            let _ = waitpid(Pid::from_raw(child_pid), None);

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

    run_perf_test(test_tree, iterations, "MyStruct");
    run_refcell_perf_test(test_tree_refcell, iterations, "MyStructRefCell");
}