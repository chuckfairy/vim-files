#!/bin/bash

git clone https://github.com/universal-ctags/ctags.git ~/Sources/ctags
cd ~/Sources/ctags
./autogen.sh
./configure --prefix=/usr/local # defaults to /usr/local
make
make install # may require extra privileges depending on where to install
