# cmakeCudaTemplate
This repo is a simple cmake configuration for C++ and CUDA
sources compilation.

Put the C++ code in the `src/core`, the CUDA code 
in the `src/cuda`, the header files in the `include`

`config.cmake` sets the `USE_CUDA`, you may change it to
`/path/to/cuda_toolkit`. 

`cmake/FindCUDA.cmake` finds the CUDA package, it also finds
the `cuBLAS, cuDNN, cuDART, nvrtc`.

## Build
Just simple cmake routine.
```shell
mkdir build
cd build
cmake ..
make
```
If all the things go well, you'll see the `helloWorldFromGPU`
compiled from the toy sample.
```shell
./helloWorldFromGPU
#Hello, World!
#Test from GPU
#Test from GPU
#Test from GPU
#Test from GPU
#Test from GPU
```

