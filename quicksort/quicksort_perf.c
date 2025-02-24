#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low;

    for (int j = low; j < high; j++) {
        if (arr[j] <= pivot) {
            swap(&arr[i], &arr[j]);
            i++;
        }
    }

    swap(&arr[i], &arr[high]);
    return i;
}

void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
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
        printf("Error: Memory allocation failed.\n");
        return 1;
    }

    srand(time(NULL));
    for (int i = 0; i < size; i++) {
        arr[i] = rand();
    }

    int pid = getpid();
    int cpid = fork(); 


    if (cpid == 0) { 
        char buf[300];
        snprintf(buf, sizeof(buf), "perf stat -e cycles,instructions,cache-references,cache-misses -p %d > quicksort_c_perf_output.log 2>&1", pid);
        execl("/bin/sh", "sh", "-c", buf, NULL);
        perror("execl failed");
        exit(1);
    } else { 
        setpgid(cpid, 0); 
        sleep(1);  

        clock_t start_time = clock();
        quickSort(arr, 0, size - 1);
        clock_t end_time = clock();

        kill(-cpid, SIGINT);
        waitpid(cpid, NULL, 0);  



        FILE *perf_file = fopen("quicksort_c_perf_output.log", "r");
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
        printf("\nTime taken to sort the array of size %d: %f seconds\n", size, time_elapsed);

        free(arr);
    }

    return 0;
}
