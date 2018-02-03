#!/bin/bash
#
g++ -c bits_to_ui.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling bits_to_ui.cpp"
  exit
fi
#
g++ bits_to_ui.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading bits_to_ui.o."
  exit
fi
#
rm bits_to_ui.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/bits_to_ui
#
echo "Executable installed as ~/bincpp/$ARCH/bits_to_ui"
