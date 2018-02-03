#!/bin/bash
#
g++ -c recomment.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling recomment.cpp"
  exit
fi
#
g++ recomment.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading recomment.o."
  exit
fi
#
rm recomment.o
#
chmod ugo+x a.out
mv a.out ~/bin/$ARCH/recomment
#
echo "Executable installed as ~/bin/$ARCH/recomment"
