#!/bin/bash
#
g++ -c triangulation_q2l.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_q2l.cpp"
  exit
fi
#
g++ triangulation_q2l.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_q2l.o."
  exit
fi
#
rm triangulation_q2l.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/triangulation_q2l
#
echo "Executable installed as ~/bincpp/$ARCH/triangulation_q2l"
