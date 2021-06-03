#!/bin/bash

for i in `find ./ -name *.o | sort` ; do
  loops=`objdump -d $i | grep ">:" | grep unnamed | wc -l | awk '{print $1}'`;
  echo "Benchmark $i has parallelized $loops loops" ;
done
