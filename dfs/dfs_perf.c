#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

int** createAdjMatrix(int n) {
    int** matrix = (int**)malloc(n * sizeof(int*));
    for (int i = 0; i < n; i++) {
        matrix[i] = (int*)calloc(n, sizeof(int));
    }
    return matrix;
}

void freeAdjMatrix(int** matrix, int n) {
    for (int i = 0; i < n; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

void generateRandomGraph(int** adjMatrix, int n) {
    srand(time(NULL));
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            if (rand() % 2) { // Randomly connect nodes with a 50% probability
                adjMatrix[i][j] = 1;
                adjMatrix[j][i] = 1;
            }
        }
    }
}

void dfs(int** adjMatrix, int n, int start, int* visited) {
    visited[start] = 1;
    for (int i = 0; i < n; i++) {
        if (adjMatrix[start][i] == 1 && !visited[i]) {
            dfs(adjMatrix, n, i, visited);
        }
    }
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        printf("Usage: %s <number_of_nodes>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0) {
        printf("Invalid number of nodes. Please enter a positive integer.\n");
        return 1;
    }

    int** adjMatrix = createAdjMatrix(size);
    generateRandomGraph(adjMatrix, size);
    int* visited = (int*)calloc(size, sizeof(int));

    int pid = getpid();
    int cpid = fork();

    if (cpid == 0) { 
        // Child Process: Run `perf stat` and redirect output to log
        char buf[300];
        snprintf(buf, sizeof(buf), "perf stat -e cycles,instructions,cache-references,cache-misses -p %d > dfs_c_perf_output.log 2>&1", pid);
        execl("/bin/sh", "sh", "-c", buf, NULL);
        perror("execl failed");
        exit(1);
    } else { 
        // Parent Process: Set process group and run DFS
        setpgid(cpid, 0);
        sleep(1);  

        clock_t start_time = clock();
        dfs(adjMatrix, size, 0, visited);
        clock_t end_time = clock();

        kill(-cpid, SIGINT);
        sleep(1); 

        waitpid(cpid, NULL, 0);

        // Read and print perf output
        FILE *perf_file = fopen("dfs_c_perf_output.log", "r");
        if (perf_file) {
            char line[256];
            printf("\n[ Perf Stat Output ]\n");
            while (fgets(line, sizeof(line), perf_file)) {
                printf("%s", line);
            }
            fclose(perf_file);
        } else {
            perror("Failed to read perf stat log");
        }

        double time_elapsed = ((double)(end_time - start_time)) / CLOCKS_PER_SEC;
        printf("\nTime taken to search graph of size %d: %f seconds\n", size, time_elapsed);

        freeAdjMatrix(adjMatrix, size);
        free(visited);
    }

    return 0;
}
