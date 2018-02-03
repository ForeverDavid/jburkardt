#!/bin/bash
#
g++ -c tet_mesh_volumes.cpp
if [ $? -ne 0 ]; then
  echo "Error compiling tet_mesh_volumes.cpp"
  exit
fi
#
g++ tet_mesh_volumes.o -lm
if [ $? -ne 0 ]; then
  echo "Error loading tet_mesh_volumes.o
  exit
fi
rm tet_mesh_volumes.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/tet_mesh_volumes
#
echo "Program installed as ~/bincpp/$ARCH/tet_mesh_volumes"
