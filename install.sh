#!/usr/bin/env bash

cd ~/
if [ -e ~/.vim ]
then
    mv ~/.vim ~/.vim.bak.`date "+%Y%m%d%H%M%S"`
fi
if [ -e ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.bak.`date "+%Y%m%d%H%M%S"`
fi
git clone https://github.com/lennyhbt/vim-configs.git ~/.vim

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
pushd ~/.vim/bundle/YouCompleteMe/
bash ./install.sh --clang-completer
popd
if [ ! -e ~/.ycm_extra_conf.py ]
then
    cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.ycm_extra_conf.py
fi
