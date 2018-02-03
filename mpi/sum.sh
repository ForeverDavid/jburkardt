#!/bin/bash
#
g++ -c sum_mpi.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling sum_mpi.cpp"
  exit
fi
#
g++ sum_mpi.o  -lm
if [ $? -ne 0 ]; then
  echo "Errors loading sum_mpi.o"
  exit
fi
rm sum_mpi.o
#
mv a.out sum
mpirun -v -np 4 ./sum > sum_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running sum"
  exit
fi
rm sum
#
echo "The sum test problem has been executed."
