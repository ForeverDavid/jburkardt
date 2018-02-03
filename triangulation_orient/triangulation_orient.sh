#!/bin/bash
#
g++ -c triangulation_orient.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_orient.cpp"
  exit
fi
#
g++ triangulation_orient.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_orient.o."
  exit
fi
#
rm triangulation_orient.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/triangulation_orient
#
echo "Executable installled as ~/bincpp/$ARCH/triangulation_orient"
