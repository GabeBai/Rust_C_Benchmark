#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

int binarySearch(int arr[], int low, int high, int x) {
    while (low <= high) {
        int mid = low + (high - low) / 2;

        if (arr[mid] == x)
            return mid;

        if (arr[mid] < x)
            low = mid + 1;
        else
            high = mid - 1;
    }

    return -1;
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

    // Fill the array with values from 1 to size
    for (int i = 0; i < size; i++) {
        arr[i] = i + 1;
    }

    int pid = getpid();
    int cpid = fork();

    if (cpid == 0) { 
        // Child Process: Run `perf stat` and redirect output to log
        char buf[300];
        snprintf(buf, sizeof(buf), "perf stat -e cycles,instructions,cache-references,cache-misses -p %d > binary_search_c_perf_output.log 2>&1", pid);
        execl("/bin/sh", "sh", "-c", buf, NULL);
        perror("execl failed");
        exit(1);
    } else { 
        // Parent Process: Set process group and run Binary Search
        setpgid(cpid, 0);
        sleep(1);  

        clock_t start_time, end_time;
        double time_elapsed = 0;

        // Search every possible element in the array, get total time
        for (int i = 0; i < size; i++) {
            int target = arr[i];
            start_time = clock();
            binarySearch(arr, 0, size - 1, target);
            end_time = clock();
            time_elapsed += ((double)(end_time - start_time)) / CLOCKS_PER_SEC;
        }

        kill(-cpid, SIGINT);
        sleep(1); 

        waitpid(cpid, NULL, 0);

        // Read and print perf output
        FILE *perf_file = fopen("binary_search_c_perf_output.log", "r");
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

        printf("\nTime taken to search array of size %d: %f seconds\n", size, time_elapsed);

        free(arr);
    }

    return 0;
}
