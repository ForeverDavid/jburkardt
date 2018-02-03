#!/bin/bash
#
g++ -c -I/$HOME/include linpack_z_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling linpack_z_prb.cpp"
  exit
fi
#
g++ linpack_z_prb.o /$HOME/libcpp/$ARCH/linpack_z.o /$HOME/libcpp/$ARCH/blas1_z.o /$HOME/libcpp/$ARCH/blas0.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading linpack_z_prb.o."
  exit
fi
#
rm linpack_z_prb.o
#
mv a.out linpack_z_prb
./linpack_z_prb > linpack_z_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running linpack_z_prb."
  exit
fi
rm linpack_z_prb
#
echo "Program output written to linpack_z_prb_output.txt"
