#!/bin/bash
#
g++ -c problem4.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling problem4.cpp"
  exit
fi
#
g++ problem4.o $HOME/libcpp/$ARCH/fd1d_heat_steady.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading problem4.o"
  exit
fi
rm problem4.o
#
mv a.out problem4
./problem4 > problem4_output.txt
rm problem4
#
echo "Test program output written to problem4_output.txt."
