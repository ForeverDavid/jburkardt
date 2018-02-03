#!/bin/bash
#
g++ -c -I/$HOME/include vandermonde_approx_2d_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling vandermonde_approx_2d_prb.cpp"
  exit
fi
#
g++ vandermonde_approx_2d_prb.o /$HOME/libcpp/$ARCH/vandermonde_approx_2d.o \
                                /$HOME/libcpp/$ARCH/test_interp_2d.o \
                                /$HOME/libcpp/$ARCH/qr_solve.o \
                                /$HOME/libcpp/$ARCH/r8lib.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading vandermonde_approx_2d_prb.o."
  exit
fi
#
rm vandermonde_approx_2d_prb.o
#
mv a.out vandermonde_approx_2d_prb
./vandermonde_approx_2d_prb > vandermonde_approx_2d_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running vandermonde_approx_2d_prb."
  exit
fi
rm vandermonde_approx_2d_prb
#
echo "Program output written to vandermonde_approx_2d_prb_output.txt"
