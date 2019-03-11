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
"Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" super simple vim plugin to show the list of buffers in the command bar
" Plug 'bling/vim-bufferline'
" Plug 'mhinz/vim-startify'
" Lightning fast left-right movement in Vim
Plug 'unblevable/quick-scope'
" Git wrapper
Plug 'tpope/vim-fugitive'
" show modify colum
Plug 'mhinz/vim-signify'
" easy mark
Plug 'kshenoy/vim-signature'
" Automatic resizing of Vim windows to the golden ratio
Plug 'roman/golden-ratio'
" color themes
Plug 'godlygeek/csapprox'   " Make gvim-only colorschemes work transparently in terminal vim
Plug 'NLKNguyen/papercolor-theme'
Plug 'google/vim-colorscheme-primary'
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'bluz71/vim-moonfly-colors'

" 『盘古之白』中文排版自动规范化的 Vim 插件
Plug 'hotoo/pangu.vim'
" A Vim auto-pair plugin that supports multi-character pairs, intelligent matching, and more
Plug 'tmsvg/pear-tree'

if v:version >= 800
    Plug 'w0rp/ale'     " async syntastic
    if has('python3')
        if has('nvim')
            "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
            "Plug 'zchee/deoplete-jedi'
            Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
        else
            " coc.nvim need yarn global add vim-node-rpc (https://github.com/neoclide/vim-node-rpc)
            "Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
            Plug 'Shougo/deoplete.nvim'
            Plug 'zchee/deoplete-jedi'
            Plug 'roxma/nvim-yarp'
            Plug 'roxma/vim-hug-neovim-rpc'
        endif
    else
        Plug 'maralla/completor.vim'
    endif
else
    Plug 'scrooloose/syntastic'
    Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer'}
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

    " for python
    Plug 'heavenshell/vim-pydocstring'
    " Plug 'klen/python-mode'
    Plug 'davidhalter/jedi-vim', {'for': 'python'}
    Plug 'tell-k/vim-autopep8', {'for': 'python'}
endif

Plug 'Valloric/MatchTagAlways'
" Plug 'michaeljsmith/vim-indent-object'
Plug 'google/vim-searchindex'
Plug 'chrisbra/Colorizer' " colorize all text in the form #rrggbb or #rgb
Plug 'gorodinskiy/vim-coloresque' " css/less/sass/html color preview for vim
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', {'for': 'go'}

Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
" tabs / buffers / files management, fast fuzzy searching powered by Go
Plug 'szw/vim-ctrlspace'
" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" An asynchronous fuzzy finder which is used to quickly locate files, buffers, mrus, tags, etc. in large project.
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" edit ipython notebook
Plug 'vyzyv/vimpyter'
Plug 'goerz/ipynb_notedown.vim'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'
" A solid language pack for Vim.  -- no good, affect iskeyword
" Plug 'sheerun/vim-polyglot'
" An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
Plug 'dyng/ctrlsf.vim'
"provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'
" allows you to visually select increasingly larger regions of text using the same key combination.
Plug 'terryma/vim-expand-region'
" Ultimate hex editing system with Vim
Plug 'Shougo/vinarise.vim'

Plug 'tpope/vim-surround'
"Plug 'kchmck/vim-coffee-script'
"Plug 'vim-ruby/vim-ruby'
" Plug 'wting/rust.vim'
" -- draw stuffs
Plug 'vim-scripts/DrawIt'
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'wannesm/wmgraphviz.vim'
Plug 'gyim/vim-boxdraw'

Plug 'jistr/vim-nerdtree-tabs'
Plug 'gregsexton/MatchTag'
Plug 'vim-scripts/vst_with_syn'

" input method fuzzy
"Plug 'qytz/vim-barbaric'
" Plug 'christoomey/vim-tmux-navigator'
" Add plugins to &runtimepath
call plug#end()
