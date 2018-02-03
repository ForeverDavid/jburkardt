#!/bin/bash
#
g++ -c xyzf_display_opengl.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling xyzf_display_opengl.cpp"
  exit
fi
#
#  Here is the load statement for Apple's OS X.
#
g++ xyzf_display_opengl.o -lm -framework GLUT -framework OpenGL
#
#  Here is the load statement for a normal UNIX system!
#
#g++ xyzf_display_opengl.o -lm -lGL -lGLU -lglut
#
if [ $? -ne 0 ]; then
  echo "Errors linking and loading xyzf_display_opengl.o"
  exit
fi
#
rm xyzf_display_opengl.o
mv a.out ~/bincpp/$ARCH/xyzf_display_opengl
#
echo "Executable installed as ~/bincpp/$ARCH/xyzf_display_opengl"
