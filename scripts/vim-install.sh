#! /bin/sh

git clone https://github.com/vim/vim.git

cd vim

make distclean

echo "Install Path : $1"
./configure --with-features=huge --enable-pythoninterp --enable-python3interp --enable-rubyinterp --enable-luainterp --enable-perlinterp  --enable-gui=gtk2 --enable-cscope --prefix=$1

make

make install
