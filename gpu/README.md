# PIC Skeleton Codes:  GPU

## GPU Tutorial

Tutorial for Computing on GPUs: GPUTutorial



## GPU Codes with two levels of parallelism

These codes illustrate how to implement an optimal PIC algorithm on a GPU. It uses a hybrid tiling scheme with SIMD vectorization, both written with NVIDIA’s CUDA programming environment. The tiling algorithm used within a thread block on the GPU is the same as that used with OpenMP (Ref. [4]). Unlike the OpenMP implementation, however, each tile is controlled by a block of threads rather than a single thread, which requires a vectorized or data parallel implementation. Both CUDA C and CUDA Fortran interoperable versions are available, where a Fortran code can call the CUDA C libraries and a C code can call the CUDA Fortran libraries. For the 2D electrostatic code, a typical execution time for the particle part of this code on the M2090 GPU is about 0.9 ns/particle/time-step. For the 2-1/2D electromagnetic code, a typical execution time for the particle part of this code is about 2.0 ns/particle/time-step.

 

The __first family__ uses CUDA C on the NVIDIA GPU, with a tiling technique for each thread block, and with SIMD vectorization within a block.

1. 2D Parallel Electrostatic Spectral code:  gpupic2
2. 2-1/2D Parallel Electromagnetic Spectral code:  gpubpic2

The __second family__ uses CUDA Fortran on the NVIDIA GPU, with a tiling technique for each thread block, and with SIMD vectorization within a block.

1. 2D Parallel Electrostatic Spectral code:  gpufpic2
2. 2-1/2D Parallel Electromagnetic Spectral code:  gpufbpic2



## GPU-MPI Codes with three levels of parallelism

These codes illustrate how to implement an optimal PIC algorithm on multiple GPUs. It uses a hybrid tiling scheme with SIMD vectorization on each GPU, and domain decomposition connecting such GPUs implemented with MPI. The algorithms used are described in Refs. [2-4]. Both CUDA C and CUDA Fortran interoperable versions are available, where a Fortran code can call the CUDA C libraries and a C code can call the CUDA Fortran libraries. For the 2D electrostatic code, a typical execution time for the particle part of this code on 108 M2090 GPUs is about 13 ps/particle/time-step. For the 2-1/2D electromagnetic code, a typical execution time for the particle part of this code is about 30 ps/particle/time-step. To put this into perspective, on 96 GPUs, a 2-1/2d electromagnetic simulation with 10 billion particles and a 16384x16384 grid takes about 0.5 sec/time step, including the field solver. The particle calculation is 3600 times faster than in the original serial code.



The __first family__ uses CUDA C on the NVIDIA GPU, with a tiling technique for each thread block, SIMD vectorization within a block, and domain decomposition with MPI between GPUs.

1. 2D Parallel Electrostatic Spectral code:  gpuppic2
2. 2-1/2D Parallel Electromagnetic Spectral code:  gpupbpic2

The __second family__ uses CUDA Fortran on the NVIDIA GPU, with a tiling technique for each thread block, SIMD vectorization within a block, and domain decomposition with MPI between GPUs.

1. 2D Parallel Electrostatic Spectral code:  gpufppic2
2. 2-1/2D Parallel Electromagnetic Spectral code:  gpufpbpic2

### Instructions for Brian:

(NOTE:  Usually the order for these commands do not matter, however, there is a bug in the system so the order for these commands matter here.  It should be fixed soon.)

The goal for the next two weeks (until 7/5/2019) is to benchmark both the serial and the parallel versions of the code on the NERSC GPU cluster.  To compile the code, type


This command gets you on one of the GPU's.  To load all the necessary modules, type the following commands

module purge

module esslurm

module load cuda pgi

module load mvapich2

You need to load the modules on the CPU nodes on Cori, then request a GPU node, using the command below.

salloc -C gpu -t 10 -N 1 -c 10 --gres=gpu:1 -A m1759

In each folder there is a file for compiling on Cori, to use it, type:  

make -f Makefile.cori clean

to make the binaries for Viktor's code, following the "clean" command you would type

make -f Makefile.cori cuda

to make the binary for Han's code, use the make command:

make -f Makefile.cori acc

it will create a working binary code.  Then run the code using the command:

srun ./cgpupic2

for the c code or 

srun ./fgpupic2

to run the fortran code and 

srun ./f03gpupic2

to run the code written in Fortran 2003




### Want to contact the developer?

Send mail to Viktor Decyk – decyk@physics.ucla.edu 


