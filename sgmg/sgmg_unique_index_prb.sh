#!/bin/bash
#
g++ -c -I/$HOME/include sgmg_unique_index_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling sgmg_unique_index_prb.cpp"
  exit
fi
#
g++ sgmg_unique_index_prb.o /$HOME/libcpp/$ARCH/sgmg.o /$HOME/libcpp/$ARCH/sandia_rules.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading sgmg_unique_index_prb.o."
  exit
fi
#
rm sgmg_unique_index_prb.o
#
mv a.out sgmg_unique_index_prb
./sgmg_unique_index_prb > sgmg_unique_index_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running sgmg_unique_index_prb."
  exit
fi
rm sgmg_unique_index_prb
#
echo "Program output written to sgmg_unique_index_prb_output.txt"
