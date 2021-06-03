# CCK

This is the top-level git repository for the CCK compiler

## Binaries
Binaries we generated for both Linux and Nautilus OS are under the directory 
```
binaries
```

## Compile the compilers
Run from the top directory
```
make
```

## Compile the benchmarks
To compile NAS benchmarks you need to compile the compilers first (see above).

To compile NAS benchmarks for Linux, run from the top directory:
```
make Linux
```

To compile NAS benchmarks for Nautilus, run from the top directory:
```
make Nautilus
```
