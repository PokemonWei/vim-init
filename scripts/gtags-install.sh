#! /bin/sh

wget http://tamacom.com/global/global-6.6.4.tar.gz

cd global-6.6.4 

make distclean

echo "Gtags Install Path: $1"

./configure --prefix=$1 # defaults to /usr/local

make

make install # may require extra privileges depending on where to install

