#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// Function to dynamically allocate a 2D array for the adjacency matrix
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

// Function to generate a random graph
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

// Function to print the adjacency matrix
void printAdjMatrix(int** adjMatrix, int n) {
    printf("Adjacency Matrix:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            printf("%d ", adjMatrix[i][j]);
        }
        printf("\n");
    }
}

void bfs(int** adjMatrix, int n, int start) {
    bool* visited = (bool*)calloc(n, sizeof(bool));
    int* queue = (int*)malloc(n * sizeof(int));
    int front = 0, rear = 0;

    visited[start] = true;
    queue[rear++] = start;

    while (front < rear) {
        int current = queue[front++];
        printf("Visited node %d\n", current);

        for (int i = 0; i < n; i++) {
            if (adjMatrix[current][i] == 1 && !visited[i]) {
                visited[i] = true;
                queue[rear++] = i;
            }
        }
    }

    free(visited);
    free(queue);
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


    printf("\nPerforming Breadth First Search starting from node 0:\n");

    clock_t start_time, end_time;
    double time_elapsed;

    start_time = clock();
    bfs(adjMatrix, size, 0);
    end_time = clock();
    time_elapsed = ((double)(end_time - start_time)) / CLOCKS_PER_SEC;

    printf("Time taken to search graph of size %d: %f seconds\n", size, time_elapsed);

    freeAdjMatrix(adjMatrix, size);

    return 0;
}
