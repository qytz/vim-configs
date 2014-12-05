set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/csapprox'
Bundle 'vim-scripts/delimitMate.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/YankRing.vim'
"Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DrawIt'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'
"Bundle 'Shougo/neocomplete.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kshenoy/vim-signature'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'szw/vim-ctrlspace'
Bundle 'terryma/vim-expand-region'

" for git
Bundle 'tpope/vim-git'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

" html & css quick editing
Bundle 'mattn/emmet-vim'
Bundle "pangloss/vim-javascript"
" need python suport
"Bundle 'klen/python-mode'
Bundle 'hdima/python-syntax'

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'gregsexton/MatchTag'

" qt develop
Bundle 'peterhoeg/vim-qml'

" solarized colorscheme
Bundle 'altercation/vim-colors-solarized'

" for Doxygen
Bundle 'vim-scripts/DoxyGen-Syntax'
Bundle 'vim-scripts/DoxygenToolkit.vim'
