#!/bin/bash
#
g++ -c triangulation_l2q.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_l2q.cpp"
  exit
fi
#
g++ triangulation_l2q.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_l2q.o."
  exit
fi
#
rm triangulation_l2q.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/triangulation_l2q
#
echo "Executable installed as ~/bincpp/$ARCH/triangulation_l2q"
