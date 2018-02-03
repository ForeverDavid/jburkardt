#!/bin/bash
#
g++ -c tet_mesh_q2l.cpp
if [ $? -ne 0 ]; then
  echo "Error compiling tet_mesh_q2l.cpp"
  exit
fi
#
g++ tet_mesh_q2l.o -lm
if [ $? -ne 0 ]; then
  echo "Error loading tet_mesh_q2l.o
  exit
fi
rm tet_mesh_q2l.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/tet_mesh_q2l
#
echo "Executable installed as ~/bincpp/$ARCH/tet_mesh_q2l"
