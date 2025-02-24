#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

void selection_sort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int min_idx = i;
        for (int j = i + 1; j < n; j++) {
            if (arr[j] < arr[min_idx]) {
                min_idx = j;
            }
        }
        int temp = arr[i];
        arr[i] = arr[min_idx];
        arr[min_idx] = temp;
    }
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <array_size>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0) {
        printf("Error: array size must be a positive integer.\n");
        return 1;
    }

    int *arr = (int *)malloc(size * sizeof(int));
    if (!arr) {
        printf("Memory allocation failed.\n");
        return 1;
    }

    srand(time(NULL));
    for (int i = 0; i < size; i++) {
        arr[i] = rand();
    }

    int pid = getpid();
    int cpid = fork();

    if (cpid == 0) { 
        // Child Process: Run `perf stat` and redirect output to log
        char buf[300];
        snprintf(buf, sizeof(buf), "perf stat -e cycles,instructions,cache-references,cache-misses -p %d > selection_sort_c_perf_output.log 2>&1", pid);
        execl("/bin/sh", "sh", "-c", buf, NULL);
        perror("execl failed");
        exit(1);
    } else { 
        // Parent Process: Set process group and run Selection Sort
        setpgid(cpid, 0);
        sleep(1);  

        clock_t start_time, end_time;
        double time_elapsed;

        start_time = clock();
        selection_sort(arr, size);
        end_time = clock();
        time_elapsed = ((double)(end_time - start_time)) / CLOCKS_PER_SEC;

        kill(-cpid, SIGINT);
        sleep(1); 

        waitpid(cpid, NULL, 0);

        // Read and print perf output
        FILE *perf_file = fopen("selection_sort_c_perf_output.log", "r");
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

        printf("\nTime taken to sort the array of size %d: %f seconds\n", size, time_elapsed);

        free(arr);
    }

    return 0;
}
