#!/bin/bash
#
g++ -c int_exactness_gen_hermite.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling int_exactness_gen_hermite.cpp"
  exit
fi
#
g++ int_exactness_gen_hermite.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading int_exactness_gen_hermite.o"
  exit
fi
rm int_exactness_gen_hermite.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/int_exactness_gen_hermite
#
echo "Executable installed as ~/bincpp/$ARCH/int_exactness_gen_hermite"
