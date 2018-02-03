#!/bin/bash
#
g++ -c triangulation_delaunay_discrepancy.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_delaunay_discrepancy.cpp"
  exit
fi
#
g++ triangulation_delaunay_discrepancy.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_delaunay_discrepancy.o"
  exit
fi
#
rm triangulation_delaunay_discrepancy.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/triangulation_delaunay_discrepancy
#
echo "Executable installed as ~/bincpp/$ARCH/triangulation_delaunay_discrepancy"
