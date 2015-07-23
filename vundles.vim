set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-markdown'
Bundle 'fatih/vim-go'
Bundle 'othree/html5.vim'
Bundle 'elzr/vim-json'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mattn/emmet-vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'wting/rust.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'fs111/pydoc.vim'

Bundle 'Raimondi/delimitMate'
Bundle 'Shougo/neocomplete.vim'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'Shougo/neosnippet.vim'
"Bundle 'Shougo/neosnippet-snippets'
Bundle 'vim-scripts/AutoComplPop'

Bundle 'altercation/vim-colors-solarized'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'flazz/vim-colorschemes'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'ap/vim-css-color'
Bundle 'xolox/vim-easytags'
Bundle 'hdima/python-syntax'
Bundle 'chrisbra/Colorizer'

Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'mhinz/vim-signify'
Bundle 'Shougo/vimshell.vim'
Bundle 'gregsexton/gitv'
Bundle 'h1mesuke/unite-outline'
Bundle 'joonty/vdebug'
Bundle 'ivanov/vim-ipython'
Bundle 'idbrii/AsyncCommand'
Bundle 'christoomey/vim-tmux-navigator'

Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'mhinz/vim-startify'
Bundle 'vim-scripts/ZoomWin'
Bundle 'Shougo/vinarise.vim'

Bundle 'scrooloose/nerdcommenter'
Bundle 'easymotion/vim-easymotion'
Bundle 'szw/vim-ctrlspace'
Bundle 'Shougo/unite.vim'

"rst
Bundle 'vim-scripts/vst_with_syn'
"qml
Bundle 'peterhoeg/vim-qml'

"Make gvim-only colorschemes work transparently in terminal vim
Bundle 'godlygeek/csapprox'
"so supports dynamic highlighting of signs. In the ima
Bundle 'kshenoy/vim-signature'
"visually select increasingly larger regions of text using the same key combination
bundle 'terryma/vim-expand-region'

Bundle 'vim-scripts/DrawIt'


Bundle 'gregsexton/MatchTag'

Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'terryma/vim-multiple-cursors'

" one step above 'nocompatible' mode: a universal set of defaults that (hopefully) everyone can agree on.
Bundle 'tpope/vim-sensible'

"Bundle 'Valloric/YouCompleteMe'
"Bundle 'ervandew/supertab'
