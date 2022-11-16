#!/bin/bash

# Helper programs
sudo apt install fzf silversearcher-ag bat ripgrep

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.vim/.vimrc ~/.vimrc;


echo "Installing ctags and checking vim"

sudo apt install vim ctags


echo "Installing vim Plugins"

vim -c :PluginInstall -c :qa

vim -c :CocInstall coc-tsserver coc-json coc-html coc-css coc-phpls coc-ccls


echo "Install YCM modules"

#cd ./bundle/YouCompleteMe;
./bundle/YouCompleteMe/install.py --clang-completer --ts-completer --cs-completer
