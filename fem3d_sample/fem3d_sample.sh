#!/bin/bash
#
g++ -c fem3d_sample.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling fem3d_sample.cpp"
  exit
fi
#
g++ fem3d_sample.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading fem3d_sample.o."
  exit
fi
#
rm fem3d_sample.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/fem3d_sample
#
echo "Executable installed as ~/bincpp/$ARCH/fem3d_sample"
