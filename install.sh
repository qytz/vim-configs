#!/usr/bin/env bash

# mkdir vim config dir
mkdir -p ~/.vim

# git clone vim configs
git clone https://github.com/lennyhbt/vim-configs.git ~/.vim

#git clone vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# link vimrc file
ln -s ~/.vim/vimrc ~/.vimrc

# install all plugins
vim +PluginInstall +qall
