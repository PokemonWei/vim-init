
git clone https://github.com/universal-ctags/ctags.git

cd ctags

./autogen.sh
./configure --prefix=$1 # defaults to /usr/local
make
make install # may require extra privileges depending on where to install

