#!/bin/bash
#
cp vandermonde_interp_2d.hpp /$HOME/include
#
g++ -c -I /$HOME/include vandermonde_interp_2d.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling vandermonde_interp_2d.cpp"
  exit
fi
#
mv vandermonde_interp_2d.o ~/libcpp/$ARCH/vandermonde_interp_2d.o
#
echo "Library installed as ~/libcpp/$ARCH/vandermonde_interp_2d.o"
