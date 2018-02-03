#!/bin/bash
#
g++ -c ccn_rule.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling ccn_rule.cpp"
  exit
fi
#
g++ ccn_rule.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading ccn_rule.o"
  exit
fi
rm ccn_rule.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/ccn_rule
#
echo "Executable installed as ~/bincpp/$ARCH/ccn_rule"
