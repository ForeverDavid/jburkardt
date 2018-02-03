#!/bin/bash
#
g++ -c sparse_grid_laguerre_dataset.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling sparse_grid_laguerre_dataset.cpp"
  exit
fi
#
g++ sparse_grid_laguerre_dataset.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading sparse_grid_laguerre_dataset.o."
  exit
fi
#
rm sparse_grid_laguerre_dataset.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/sparse_grid_laguerre_dataset
#
echo "Executable installed as ~/bincpp/$ARCH/sparse_grid_laguerre_dataset"
