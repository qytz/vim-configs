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

# get all vim-snippets
# cd ~/.vim/bundle/vim-snippets/

# build ycm plugin
bash ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.ycm_extra_conf.py
