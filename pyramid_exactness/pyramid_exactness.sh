#!/bin/bash
#
g++ -c pyramid_exactness.cpp
if [ $? -ne 0 ]; then
  echo "Errors compiling pyramid_exactness.cpp"
  exit
fi
#
g++ pyramid_exactness.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading pyramid_exactness.o"
  exit
fi
rm pyramid_exactness.o
#
chmod ugo+x a.out
mv a.out ~/bincpp/$ARCH/pyramid_exactness
#
echo "Executable installed as ~/bincpp/$ARCH/pyramid_exactness"
