#!/bin/bash
#
g++ -c fem2d_sample.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling fem2d_sample.cpp"
  exit
fi
#
g++ fem2d_sample.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading fem2d_sample.o."
  exit
fi
#
rm fem2d_sample.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/fem2d_sample
#
echo "Executable installed as ~/bincpp/$ARCH/fem2d_sample"
