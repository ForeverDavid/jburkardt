#!/bin/bash
#
g++ -c int_exactness_chebyshev1.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling int_exactness_chebyshev1.cpp"
  exit
fi
#
g++ int_exactness_chebyshev1.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading int_exactness_chebyshev1.o"
  exit
fi
rm int_exactness_chebyshev1.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/int_exactness_chebyshev1
#
echo "Executable installed as ~/bincpp/$ARCH/int_exactness_chebyshev1"
