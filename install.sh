#!/usr/bin/env bash

#git clone vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
mkdir ~/.vim/.undofiles

# link vimrc file
ln -s ~/.vim/vimrc ~/.vimrc

# install all plugins
vim +PluginInstall +qall
