#!/bin/bash
#
g++ -c -I$HOME/include faure_dataset.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling faure_dataset.cpp"
  exit
fi
#
g++ faure_dataset.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading faure_dataset.o."
  exit
fi
#
rm faure_dataset.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/faure_dataset
#
echo "Executable installed as ~/bincpp/$ARCH/faure_dataset"
