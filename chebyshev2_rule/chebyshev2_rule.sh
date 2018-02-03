#!/bin/bash
#
g++ -c chebyshev2_rule.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling chebyshev2_rule.cpp"
  exit
fi
#
g++ chebyshev2_rule.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading chebyshev2_rule.o"
  exit
fi
rm chebyshev2_rule.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/chebyshev2_rule
#
echo "Executable installed as ~/bincpp/$ARCH/chebyshev2_rule"
