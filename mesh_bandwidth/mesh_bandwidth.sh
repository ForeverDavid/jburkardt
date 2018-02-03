#!/bin/bash
#
g++ -c mesh_bandwidth.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling mesh_bandwidth.cpp"
  exit
fi
#
g++ mesh_bandwidth.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading mesh_bandwidth.o"
  exit
fi
rm mesh_bandwidth.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/mesh_bandwidth
#
echo "Executable installed as ~/bincpp/$ARCH/mesh_bandwidth"
