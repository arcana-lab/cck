#!/bin/bash

function run_benchmark {
  local bench="$1" ;

  for i in `seq 0 5` ; do
    taskset -c 2,4,6,8,10,12,14,16 ./${bench}_binary &> ${bench}_time_${i}.txt ;
  done

  return 
}

export NOELLE_CORES=8

cd B ;
run_benchmark BT ;
run_benchmark FT ;
cd ../ ;

cd C ;
run_benchmark CG ;
run_benchmark EP ;
run_benchmark LU ;
run_benchmark MG ;
run_benchmark SP ;
cd ../ ;
