#include "foo.h"
#include <stdio.h>

__global__ void hello() {
    printf("Test from GPU\n");
}

void useHello() {
    hello<<<1, 5>>>();
    cudaDeviceSynchronize();
    //cudaDeviceReset();
}