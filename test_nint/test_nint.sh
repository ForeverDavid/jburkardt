#!/bin/bash
#
cp test_nint.hpp /$HOME/include
#
g++ -c -I /$HOME/include test_nint.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling test_nint.cpp"
  exit
fi
#
mv test_nint.o ~/libcpp/$ARCH/test_nint.o
#
echo "Library installed as ~/libcpp/$ARCH/test_nint.o"
