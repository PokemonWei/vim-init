#! /bin/sh

git clone https://github.com/vim/vim.git

cd vim/src

make distclean

echo "Install Path : $1"

install_path=$1

./configure --with-features=huge --enable-multibyte \
--enable-pythoninterp --enable-python3interp --enable-rubyinterp --enable-luainterp --enable-perlinterp  \
--enable-gui=gtk2 --enable-cscope --prefix=$1
#--with-python-config-dir=/root/.pyenv/versions/2.7.8/lib/python2.7/config  //指定python 路径
#--with-python-config-dir=/root/.pyenv/versions/3.6.9/lib/python3.6/config-3.6m-x86_64-linux-gnu  // 指定python3路径

make

make install

echo "Vim Path : $1/bin"

echo "export VIM_INSTALL_PATH=$install_path" >> ~/.bashrc
echo 'export PATH=$VIM_INSTALL_PATH/bin:$PATH' >> ~/.bashrc

# >> ~/.bashrc

exec "$SHELL"

cd ../../

rm -rf vim


## YouCompleteme
# ./install.py --clang-completer