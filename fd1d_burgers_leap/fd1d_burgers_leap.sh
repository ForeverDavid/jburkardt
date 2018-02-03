#!/bin/bash
#
g++ -c fd1d_burgers_leap.cpp
if [ $? -ne 0 ]; then
  echo "Errors while compiling fd1d_burgers_leap.cpp"
  exit
fi
#
g++ fd1d_burgers_leap.o
if [ $? -ne 0 ]; then
  echo "Errors while loading fd1d_burgers_leap.o"
  exit
fi
rm fd1d_burgers_leap.o
#
mv a.out ~/bincpp/$ARCH/fd1d_burgers_leap
#
echo "Program installed as ~/bincpp/$ARCH/fd1d_burgers_leap"
