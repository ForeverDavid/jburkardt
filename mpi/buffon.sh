#! /bin/bash
#
g++ -c buffon_mpi.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling buffon_mpi.cpp"
  exit
fi
#
g++ buffon_mpi.o -lm
if [ $? -ne 0 ]; then
  echo "Errors loading buffon_mpi.o"
  exit
fi
rm buffon_mpi.o
#
mv a.out buffon_mpi
mpirun -v -np 4 ./buffon_mpi > buffon_mpi.out
if [ $? -ne 0 ]; then
  echo "Errors running buffon_mpi"
  exit
fi
rm buffon_mpi
#
echo "The buffon_mpi test problem has been executed."
