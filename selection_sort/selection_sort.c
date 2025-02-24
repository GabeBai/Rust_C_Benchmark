#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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

double diff_timespec(struct timespec *time1, struct timespec *time0) {
    return (time1->tv_sec - time0->tv_sec)
        + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <array_size>\n", argv[0]);
        return 1;
    }
    
    int size = atoi(argv[1]);
    if (size <= 0 ) {
        printf("Error: array size must be positive integers.\n");
        return 1;
    }

    struct timespec start_time, end_time;
    int *arr = (int *)malloc(size * sizeof(int));
    if (!arr) {
        printf("Error: Memory allocation failed.\n");
        return 1;
    }

    srand(10000);
    for (int i = 0; i < size; i++) {
        arr[i] = rand(); 
    }

    clock_gettime(CLOCK_MONOTONIC, &start_time);
    selection_sort(arr, size);
    clock_gettime(CLOCK_MONOTONIC, &end_time);

    double time_elapsed = diff_timespec(&end_time, &start_time);
    printf("Time taken to sort the array of size %d: %f seconds\n", size, time_elapsed);

    free(arr);
    return 0;
}
