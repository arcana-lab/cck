# CCK

This is the top-level git repository for the CCK compiler

## Assumptions
There are a number of tools that need to be installed and set up to
build this codebase.   Please see the overall artifact description's readme file for these details.


## Binaries
Binaries we generated for both Linux and Nautilus OS are under the directory 
```
binaries
```

## Fetch compilers, binaries, and nautilus
Run from the top directory
```
make init
```

You can now run the Linux/AutoMP binaries from binaries/linux

## Build Nautilus with appropriate benchmark (example here is class C EP)
```
make CLASS=C BENCHMARK=EP.o build_nautilus
```

# Run the benchmark from within Nautilus (on QEMU)
```
make run_nautilus
```

To start things, use the following commands at the root-shell prompt:
```
root-shell> virgil _numcpus P
root-shell> virgil test
```

To test on a physical machine, write the nautilus_cck/nautilus.iso to a CD or USB stick and boot the machine.   Alternatively, add nautilus_cck/nautilus.bin to your grub configuration as described elsewhere, or PXE boot it.


## Compile the benchmarks
To compile NAS benchmarks you need to compile the compilers first (see above).

To compile NAS benchmarks for Linux, run from the top directory:
```
make build_linux
```

To compile NAS benchmarks for Nautilus, run from the top directory:
```
make build_nautilus
```
