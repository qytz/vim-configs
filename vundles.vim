set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" clean plugins
Bundle 'tpope/vim-sensible'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'easymotion/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'mhinz/vim-startify'
" show modify colum
Bundle 'mhinz/vim-signify'
" easy mark
Bundle 'kshenoy/vim-signature'

Bundle 'JCLiang/vim-cscope-utils'
"Make gvim-only colorschemes work transparently in terminal vim
Bundle 'godlygeek/csapprox'
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
" colorize all text in the form #rrggbb or #rgb
Bundle 'chrisbra/Colorizer'
" css/less/sass/html color preview for vim
Bundle 'gorodinskiy/vim-coloresque'
" automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate'

" language highlight
Bundle 'othree/html5.vim'
Bundle 'elzr/vim-json'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'hdima/python-syntax'
Bundle 'peterhoeg/vim-qml'

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'Shougo/neosnippet.vim'
"Bundle 'Shougo/neosnippet-snippets'

Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'szw/vim-ctrlspace'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
"Bundle 'jeaye/color_coded'
"Bundle 'Shougo/neocomplete.vim'
"Bundle 'davidhalter/jedi-vim'

if g:vim_clean_mode == 0
    Bundle 'tpope/vim-surround'
    Bundle 'scrooloose/syntastic'
    "Bundle 'fatih/vim-go'
    "Bundle 'kchmck/vim-coffee-script'
g   "Bundle 'vim-ruby/vim-ruby'
    Bundle 'wting/rust.vim'
    Bundle 'klen/python-mode'
    Bundle 'Shougo/vinarise.vim'
    Bundle 'terryma/vim-expand-region'
    Bundle 'vim-scripts/DrawIt'
    Bundle 'jistr/vim-nerdtree-tabs'
    Bundle 'gregsexton/MatchTag'
    Bundle 'vim-scripts/vst_with_syn'
    Bundle 'terryma/vim-multiple-cursors'

    "Bundle 'vim-scripts/AutoComplPop'
    Bundle 'Shougo/vimshell.vim'
    Bundle 'gregsexton/gitv'
    Bundle 'h1mesuke/unite-outline'
    Bundle 'joonty/vdebug'
    Bundle 'ivanov/vim-ipython'
    Bundle 'idbrii/AsyncCommand'
    Bundle 'christoomey/vim-tmux-navigator'
    Bundle 'vim-scripts/ZoomWin'

    " like ag, ctrlp, ctrlspace
    Bundle 'Shougo/unite.vim'
    Bundle 'Shougo/neomru.vim'

    "Bundle 'ervandew/supertab'
endif
