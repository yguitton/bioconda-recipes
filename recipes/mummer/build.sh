#!/bin/bash

BINARY=mummer
BINARY_HOME=$PREFIX/bin
MUMMER_HOME=$PREFIX/opt/mummer-$PKG_VERSION

mkdir -p $BINARY_HOME
mkdir -p $MUMMER_HOME

# cd to location of Makefile and source
cp -R $SRC_DIR/* $MUMMER_HOME

cd $MUMMER_HOME

make

binaries="\
combineMUMs \
delta-filter \
dnadiff \
exact-tandems \
mapview \
mgaps \
mummer \
mummerplot \
nucmer \
promer \
repeat-match \
run-mummer1 \
run-mummer3 \
show-aligns \
show-coords \
show-diff \
show-snps \
show-tiling \
"

for i in $binaries; do 
  chmod +x $MUMMER_HOME/$i
  ln -s "$MUMMER_HOME/$i" "$BINARY_HOME/$i"
done