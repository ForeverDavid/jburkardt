#!/bin/bash
#
g++ -c eispack_prb1.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling eispack_prb1.cpp"
  exit
fi
#
g++ eispack_prb1.o $HOME/libcpp/$ARCH/eispack.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading eispack_prb1.o"
  exit
fi
rm eispack_prb1.o
#
mv a.out eispack_prb1
./eispack_prb1 > eispack_prb1_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running eispack_prb1"
  exit
fi
rm eispack_prb1
#
echo "Test program output written to eispack_prb1_output.txt."
