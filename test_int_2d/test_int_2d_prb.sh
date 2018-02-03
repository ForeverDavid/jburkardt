#!/bin/bash
#
g++ -c -I/$HOME/include test_int_2d_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling test_int_2d_prb.cpp"
  exit
fi
#
g++ test_int_2d_prb.o /$HOME/libcpp/$ARCH/test_int_2d.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading test_int_2d_prb.o."
  exit
fi
#
rm test_int_2d_prb.o
#
mv a.out test_int_2d_prb
./test_int_2d_prb > test_int_2d_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running test_int_2d_prb."
  exit
fi
rm test_int_2d_prb
#
echo "Program output written to test_int_2d_prb_output.txt"
