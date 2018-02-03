#!/bin/bash
#
g++ -c tet_mesh_boundary.cpp
if [ $? -ne 0 ]; then
  echo "Error compiling tet_mesh_boundary.cpp"
  exit
fi
#
g++ tet_mesh_boundary.o -lm
if [ $? -ne 0 ]; then
  echo "Error loading tet_mesh_boundary.o"
  exit
fi
rm tet_mesh_boundary.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/tet_mesh_boundary
#
echo "Executable installed as ~/bincpp/$ARCH/tet_mesh_boundary"
