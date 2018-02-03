#!/bin/bash
#
cp vandermonde_interp_1d.hpp /$HOME/include
#
g++ -c -I/$HOME/include vandermonde_interp_1d.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling vandermonde_interp_1d.cpp"
  exit
fi
#
mv vandermonde_interp_1d.o ~/libcpp/$ARCH/vandermonde_interp_1d.o
#
echo "Library installed as ~/libcpp/$ARCH/vandermonde_interp_1d.o"
