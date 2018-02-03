#!/bin/bash
#
g++ -c xyz_display_opengl.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling xyz_display_opengl.cpp"
  exit
fi
#
#  Here is the load statement for Apple's OS X.
#
g++ xyz_display_opengl.o -lm -framework GLUT -framework OpenGL
#
#  Here is the load statement for a normal UNIX system!
#
#g++ xyz_display_opengl.o -lm -lGL -lGLU -lglut
#
if [ $? -ne 0 ]; then
  echo "Errors linking and loading xyz_display_opengl.o"
  exit
fi
#
rm xyz_display_opengl.o
mv a.out ~/bincpp/$ARCH/xyz_display_opengl
#
echo "Executable installed as ~/bincpp/$ARCH/xyz_display_opengl"
