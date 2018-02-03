#!/bin/bash
#
g++ -c turtle.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiing turtle.cpp"
  exit
fi
#
g++ turtle.o -framework GLUT -framework OpenGL
#g++ turtle.o -lm -lGL -lGLU -lglut
if [ $? -ne 0 ]; then
  echo "Errors linking and loading turtle.o"
  exit
fi
#
rm turtle.o
mv a.out ~/bincpp/$ARCH/turtle
#
echo "Executable installed as ~/bincpp/$ARCH/turtle"
