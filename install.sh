#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.vim/.vimrc ~/.vimrc;


echo "Installing ctags and checking vim"

sudo apt install vim ctags


echo "Installing vim Plugins"

vim -c :PluginInstall -c :qa


echo "Install YCM modules"

#cd ./bundle/YouCompleteMe;
./bundle/YouCompleteMe/install.py --clang-completer --ts-completer --cs-completer
