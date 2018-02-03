#!/bin/bash
#
g++ -c triangulation_t3_to_t4.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_t3_to_t4.cpp"
  exit
fi
#
g++ triangulation_t3_to_t4.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_t3_to_t4.o."
  exit
fi
#
rm triangulation_t3_to_t4.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/triangulation_t3_to_t4
#
echo "Executable installed as ~/bincpp/$ARCH/triangulation_t3_to_t4"
