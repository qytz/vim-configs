" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
let g:neobundle#install_process_timeout = 1500
" Use https protocol for git.
let g:neobundle#types#git#default_protocol = 'https'
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
" clean plugins
NeoBundle 'tpope/vim-sensible'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'mhinz/vim-signify'   " show modify colum
NeoBundle 'kshenoy/vim-signature'   " easy mark
NeoBundle 'JCLiang/vim-cscope-utils'
NeoBundle 'godlygeek/csapprox'  "Make gvim-only colorschemes work transparently in terminal vim
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'chrisbra/Colorizer' " colorize all text in the form #rrggbb or #rgb
NeoBundle 'gorodinskiy/vim-coloresque' " css/less/sass/html color preview for vim
NeoBundle 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.

" themes
NeoBundle 'KabbAmine/yowish.vim'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'tomasr/molokai'

" language highlight
NeoBundle 'othree/html5.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'hdima/python-syntax'
NeoBundle 'Rykka/riv.vim'
NeoBundle 'peterhoeg/vim-qml'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'rking/ag.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'fatih/vim-go'
NeoBundle 'Valloric/YouCompleteMe' , {
     \ 'build' : {
     \     'mac' : './install.sh --clang-completer',
     \     'unix' : './install.sh --clang-completer',
     \     'windows' : './install.sh --clang-completer',
     \     'cygwin' : './install.sh --clang-completer'
     \    }
     \ }

NeoBundle 'rdnetto/YCM-Generator'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'make',
\    },
\ }
"NeoBundle 'jeaye/color_coded'

if g:vim_clean_mode == 0
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'scrooloose/syntastic'
    "NeoBundle 'kchmck/vim-coffee-script'
    "NeoBundle 'vim-ruby/vim-ruby'
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

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
