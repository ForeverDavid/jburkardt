#!/bin/bash
#
g++ -c tetrahedron_properties.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling tetrahedron_properties.cpp"
  exit
fi
#
g++ tetrahedron_properties.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading tetrahedron_properties.o"
  exit
fi
rm tetrahedron_properties.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/tetrahedron_properties
#
echo "Executable installed as ~/bincpp/$ARCH/tetrahedron_properties"
