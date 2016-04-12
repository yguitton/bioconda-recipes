#!/bin/bash
sed -i.bak "s|/home/Vienna_1.6|$PREFIX|g" Makefile
make
ln -s $PREFIX/bin/INFO-RNA-2.1.2 $PREFIX/bin/info-rna
