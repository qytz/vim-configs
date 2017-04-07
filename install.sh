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
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
mkdir ~/.vim/.undofiles

# link vimrc file
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# install all plugins
# vim +PluginInstall +qall
vim +PluginInstall +qall

# get all vim-snippets
# cd ~/.vim/bundle/vim-snippets/

# build ycm plugin
#pushd ~/.vim/bundle/YouCompleteMe/
#./install.py--clang-completer
#popd
