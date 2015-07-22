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
"Bundle 'vim-scripts/YankRing.vim'
"Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DrawIt'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'
Bundle 'Shougo/neocomplete.vim'
"Bundle 'Valloric/YouCompleteMe'
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

" RestructuredText
Bundle 'vim-scripts/vst_with_syn'
" rust
Bundle 'rust-lang/rust.vim'
Bundle 'timonv/vim-cargo'
" need download rust-doc
" wget
" https://static.rust-lang.org/dist/rust-1.0.0-i686-unknown-linux-gnu.tar.gz
" tar xf rust-1.0.0-i686-unknown-linux-gnu.tar.gz
" mv rust-1.0.0-i686-unknown-linux-gnu/rust-doc ~/Documents/
" let g:rust_doc#downloaded_rust_doc_dir = '~/Documents/rust-doc'
"Bundle 'rhysd/rust-doc.vim'

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

" one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
Bundle 'tpope/vim-sensible'

