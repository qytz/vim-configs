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

" Use git protocol.
let g:neobundle#types#git#default_protocol = 'git'

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" Use neobundle standard recipes.
NeoBundle 'Shougo/neobundle-vim-recipes', {'force' : 1}
NeoBundle 'Shougo/unite.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
" clean plugins
NeoBundle 'tpope/vim-sensible'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'bling/vim-airline'
NeoBundle 'mhinz/vim-startify'
" show modify colum
NeoBundle 'mhinz/vim-signify'
" easy mark
NeoBundle 'kshenoy/vim-signature'

NeoBundle 'JCLiang/vim-cscope-utils'
"Make gvim-only colorschemes work transparently in terminal vim
NeoBundle 'godlygeek/csapprox'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
" colorize all text in the form #rrggbb or #rgb
NeoBundle 'chrisbra/Colorizer'
" css/less/sass/html color preview for vim
NeoBundle 'gorodinskiy/vim-coloresque'
" automatic closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'

" language highlight
NeoBundle 'othree/html5.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'hdima/python-syntax'
NeoBundle 'peterhoeg/vim-qml'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'rking/ag.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'Valloric/YouCompleteMe', {
     \ 'build' : {
     \     'mac' : './install.sh --clang-completer --system-libclang',
     \     'unix' : './install.sh --clang-completer --system-libclang',
     \     'windows' : './install.sh --clang-completer --system-libclang',
     \     'cygwin' : './install.sh --clang-completer --system-libclang'
     \    }
     \ }

NeoBundle 'rdnetto/YCM-Generator'
"NeoBundle 'jeaye/color_coded'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'davidhalter/jedi-vim'

if g:vim_clean_mode == 0
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'scrooloose/syntastic'
    "NeoBundle 'fatih/vim-go'
    "NeoBundle 'kchmck/vim-coffee-script'
g   "NeoBundle 'vim-ruby/vim-ruby'
    NeoBundle 'wting/rust.vim'
    NeoBundle 'klen/python-mode'
    NeoBundle 'Shougo/vinarise.vim'
    NeoBundle 'terryma/vim-expand-region'
    NeoBundle 'vim-scripts/DrawIt'
    NeoBundle 'jistr/vim-nerdtree-tabs'
    NeoBundle 'gregsexton/MatchTag'
    NeoBundle 'vim-scripts/vst_with_syn'
    NeoBundle 'terryma/vim-multiple-cursors'

    "NeoBundle 'vim-scripts/AutoComplPop'
    NeoBundle 'Shougo/vimshell.vim'
    NeoBundle 'gregsexton/gitv'
    NeoBundle 'h1mesuke/unite-outline'
    NeoBundle 'joonty/vdebug'
    NeoBundle 'ivanov/vim-ipython'
    NeoBundle 'idbrii/AsyncCommand'
    NeoBundle 'christoomey/vim-tmux-navigator'
    NeoBundle 'vim-scripts/ZoomWin'

    " like ag, ctrlp, ctrlspace
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neomru.vim'

    "NeoBundle 'ervandew/supertab'
endif

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck