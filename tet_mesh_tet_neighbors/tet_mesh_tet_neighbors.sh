#!/bin/bash
#
g++ -c tet_mesh_tet_neighbors.cpp
if [ $? -ne 0 ]; then
  echo "Error compiling tet_mesh_tet_neighbors.cpp"
  exit
fi
#
g++ tet_mesh_tet_neighbors.o -lm
if [ $? -ne 0 ]; then
  echo "Error loading tet_mesh_tet_neighbors.o
  exit
fi
rm tet_mesh_tet_neighbors.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/tet_mesh_tet_neighbors
#
echo "Executable installed as ~/bincpp/$ARCH/tet_mesh_tet_neighbors"
