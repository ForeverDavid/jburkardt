#!/bin/bash
#
g++ -c -I$HOME/include halton_dataset.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling halton_dataset.cpp"
  exit
fi
#
g++ halton_dataset.o $HOME/libcpp/$ARCH/halton.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading halton_dataset.o."
  exit
fi
#
rm halton_dataset.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/halton_dataset
#
echo "Executable installed as ~/bincpp/$ARCH/halton_dataset"
