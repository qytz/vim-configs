" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
call plug#begin('~/.vim/plugs')

Plug 'tpope/vim-sensible'
" Plug 'JCLiang/vim-cscope-utils'
Plug 'qytz/vim-cscope-utils'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
" like tagbar, but for markdown and rest etc.
Plug 'vim-voom/VOoM'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
" nerdcommenter should be after vim-cscope-utils, the have key map conficts
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'   " show modify colum
Plug 'kshenoy/vim-signature'   " easy mark
Plug 'godlygeek/csapprox'  "Make gvim-only colorschemes work transparently in terminal vim
" themes
Plug 'KabbAmine/yowish.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'

if v:version >= 800
Plug 'w0rp/ale'     " async syntastic
else
Plug 'scrooloose/syntastic'
endif
Plug 'Valloric/MatchTagAlways'
" Plug 'michaeljsmith/vim-indent-object'
Plug 'google/vim-searchindex'
" Plug 'EinfachToll/DidYouMean'
" Plug 'AndrewRadev/splitjoin.vim'

Plug 'chrisbra/Colorizer' " colorize all text in the form #rrggbb or #rgb
Plug 'gorodinskiy/vim-coloresque' " css/less/sass/html color preview for vim
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.

" language highlight
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'othree/javascript-libraries-syntax.vim',   {'for': 'javascript'}
Plug 'Rykka/riv.vim', {'for': 'rst'}
Plug 'Rykka/InstantRst'
Plug 'peterhoeg/vim-qml'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', {'for': 'go'}

Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'szw/vim-ctrlspace'
"Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer'}
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'maralla/completor.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Chiel92/vim-autoformat'
Plug 'godlygeek/tabular'

" for python
" Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'tell-k/vim-autopep8', {'for': 'python'}

if g:vim_clean_mode == 0
    Plug 'tpope/vim-surround'
    "Plug 'kchmck/vim-coffee-script'
    "Plug 'vim-ruby/vim-ruby'
    Plug 'wting/rust.vim'
    Plug 'Shougo/vinarise.vim'
    Plug 'terryma/vim-expand-region'
    Plug 'vim-scripts/DrawIt'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'gregsexton/MatchTag'
    Plug 'vim-scripts/vst_with_syn'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'christoomey/vim-tmux-navigator'
endif
" Add plugins to &runtimepath
call plug#end()
