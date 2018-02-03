#!/bin/bash
#
g++ -c -I/$HOME/include sandia_sgmga_index_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling sandia_sgmga_index_prb.cpp"
  exit
fi
#
g++ sandia_sgmga_index_prb.o /$HOME/libcpp/$ARCH/sandia_sgmga.o /$HOME/libcpp/$ARCH/sandia_rules2.o /$HOME/libcpp/$ARCH/sandia_rules.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading sandia_sgmga_index_prb.o."
  exit
fi
#
rm sandia_sgmga_index_prb.o
#
mv a.out sandia_sgmga_index_prb
./sandia_sgmga_index_prb > sandia_sgmga_index_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running sandia_sgmga_index_prb."
  exit
fi
rm sandia_sgmga_index_prb
#
echo "Program output written to sandia_sgmga_index_prb_output.txt"
