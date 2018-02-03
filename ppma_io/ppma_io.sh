#!/bin/bash
#
cp ppma_io.hpp /$HOME/include
#
g++ -c -I /$HOME/include ppma_io.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling ppma_io.cpp"
  exit
fi
#
mv ppma_io.o ~/libcpp/$ARCH/ppma_io.o
#
echo "Library installed as ~/libcpp/$ARCH/ppma_io.o"
