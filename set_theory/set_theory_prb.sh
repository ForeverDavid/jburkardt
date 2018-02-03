#!/bin/bash
#
g++ -c -I/$HOME/include set_theory_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling set_theory_prb.cpp"
  exit
fi
#
g++ set_theory_prb.o /$HOME/libcpp/$ARCH/set_theory.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading set_theory_prb.o."
  exit
fi
#
rm set_theory_prb.o
#
mv a.out set_theory_prb
./set_theory_prb > set_theory_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running set_theory_prb."
  exit
fi
rm set_theory_prb
#
echo "Program output written to set_theory_prb_output.txt"
