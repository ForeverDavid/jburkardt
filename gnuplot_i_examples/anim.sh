#!/bin/bash
#
g++ -c -I/$HOME/include anim.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling anim.cpp"
  exit
fi
#
g++ anim.o ~/libc/$ARCH/gnuplot_i.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading anim.o"
  exit
fi
rm anim.o
#
mv a.out ~/bincpp/$ARCH/anim
#
echo "Executable installed as ~/bincpp/$ARCH/anim"
