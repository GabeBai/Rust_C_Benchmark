use rand::Rng;
use std::collections::VecDeque;
use std::env;
use std::time::Instant;

fn create_adj_matrix(n: usize) -> Vec<Vec<i32>> {
    vec![vec![0; n]; n]
}

fn generate_random_graph(adj_matrix: &mut Vec<Vec<i32>>, n: usize) {
    let mut rng = rand::thread_rng();
    for i in 0..n {
        for j in (i + 1)..n {
            if rng.gen_bool(0.5) { // Randomly connect nodes with a 50% probability
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
        println!("Visited node {}", current);

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
        std::process::exit(1);
    }

    let size: usize = match args[1].parse() {
        Ok(n) if n > 0 => n,
        _ => {
            eprintln!("Invalid number of nodes. Please enter a positive integer.");
            std::process::exit(1);
        }
    };

    let mut adj_matrix = create_adj_matrix(size);
    generate_random_graph(&mut adj_matrix, size);

    // Measure the time for BFS
    let start_time = Instant::now();
    bfs(&adj_matrix, size, 0);
    let duration = start_time.elapsed();

    println!("Time taken to search graph of size {}: {:.6} seconds", size, duration.as_secs_f64());
}
