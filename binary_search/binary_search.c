#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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
    if (size <= 0) {
        printf("Error: array size must be a positive integer.\n");
        return 1;
    }

    struct timespec start_time, end_time;
    int *arr = (int *)malloc(size * sizeof(int));

    srand(time(NULL));

    // Fill the array with values from 1 to the size +1
    for (int i = 0; i < size; i++) {
        arr[i] = i + 1; 
    }


    double time_elapsed = 0;
    long total_dummy = 0;

    // Search every possible element in the array, get total time

    for (int i = 0; i < size; i++){
        int target = arr[rand() % size];

        clock_gettime(CLOCK_MONOTONIC, &start_time);
        int dummy = binarySearch(arr, 0, size - 1, target);
        total_dummy += dummy;
        clock_gettime(CLOCK_MONOTONIC, &end_time);
        time_elapsed += diff_timespec(&end_time, &start_time);
    }
    printf("Total dummy = %ld\n", total_dummy);
    
    /*
            int target = arr[rand() % size];
        start_time = clock();
        int dummy = binarySearch(arr, 0, size - 1, target);
        end_time = clock();
        time_elapsed += ((double)(end_time - start_time)) / CLOCKS_PER_SEC;
        printf("%d\n", dummy);
        */

   

    

    printf("Time taken to search array of size %d: %f seconds\n", size, time_elapsed);

    free(arr);
    return 0;
}
