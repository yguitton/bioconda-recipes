#!/bin/bash

./configure --without-mpg123 --without-x --enable-win64
make depend
make
make install prefix=$PREFIX
