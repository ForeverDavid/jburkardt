#!/bin/bash
#
g++ -c -I/$HOME/include task_division_prb.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling task_division_prb.cpp"
  exit
fi
#
g++ task_division_prb.o /$HOME/libcpp/$ARCH/task_division.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading task_division_prb.o."
  exit
fi
#
rm task_division_prb.o
#
mv a.out task_division_prb
./task_division_prb > task_division_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running task_division_prb."
  exit
fi
rm task_division_prb
#
echo "Program output written to task_division_prb_output.txt"
