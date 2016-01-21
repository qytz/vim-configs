" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
call plug#begin('~/.vim/bundle')
Plug 'tpope/vim-sensible'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify' " show modify colum
Plug 'kshenoy/vim-signature' " easy mark
Plug 'JCLiang/vim-cscope-utils'
Plug 'godlygeek/csapprox' "Make gvim-only colorschemes work transparently in terminal vim
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'chrisbra/Colorizer' " colorize all text in the form #rrggbb or #rgb
Plug 'gorodinskiy/vim-coloresque' " css/less/sass/html color preview for vim
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
" language highlight
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'othree/javascript-libraries-syntax.vim',   {'for': 'javascripy'}
Plug 'hdima/python-syntax',  {'for': 'python'}
Plug 'Rykka/riv.vim', {'for': 'rst'}
Plug 'peterhoeg/vim-qml'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'szw/vim-ctrlspace'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --gocode-completer'}
Plug 'rdnetto/YCM-Generator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

if g:vim_clean_mode == 0
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'wting/rust.vim'
    NeoBundle 'davidhalter/jedi-vim'
    NeoBundle 'klen/python-mode'
    NeoBundle 'Shougo/vinarise.vim'
    NeoBundle 'terryma/vim-expand-region'
    NeoBundle 'vim-scripts/DrawIt'
    NeoBundle 'jistr/vim-nerdtree-tabs'
    NeoBundle 'gregsexton/MatchTag'
    NeoBundle 'vim-scripts/vst_with_syn'
    NeoBundle 'terryma/vim-multiple-cursors'
    NeoBundle 'christoomey/vim-tmux-navigator'
endif
" Add plugins to &runtimepath
call plug#end()

