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
" may make vim move very very slowly for rst file
" Plug 'unblevable/quick-scope'
" Git wrapper
Plug 'tpope/vim-fugitive'
" show modify colum, Supports git, mercurial, darcs, bazaar, subversion, cvs, rcs, fossil, accurev, perforce, tfs, yadm.
Plug 'mhinz/vim-signify'
" easy mark
Plug 'kshenoy/vim-signature'
" Automatic resizing of Vim windows to the golden ratio
Plug 'roman/golden-ratio'
" color themes
" Make gvim-only colorschemes work transparently in terminal vim
Plug 'godlygeek/csapprox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'google/vim-colorscheme-primary'
Plug 'altercation/vim-colors-solarized'
Plug 'rakr/vim-one'
Plug 'bluz71/vim-moonfly-colors'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
" translate plugin
Plug 'voldikss/vim-translate-me'
" keep and restore fcitx state when leaving/re-entering insert mode
" Plug 'lilydjwg/fcitx.vim'
" Gundo.vim is Vim plugin to visualize your Vim undo tree.
Plug 'sjl/gundo.vim'

" 『盘古之白』中文排版自动规范化的 Vim 插件
Plug 'hotoo/pangu.vim'
" A Vim auto-pair plugin that supports multi-character pairs, intelligent matching, and more
Plug 'tmsvg/pear-tree'
" EditorConfig support
Plug 'editorconfig/editorconfig-vim'

if v:version >= 800
    " async syntastic
    Plug 'w0rp/ale'
    if has('python3')
        if has('nvim')
            "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
            "Plug 'zchee/deoplete-jedi'
            "install from source Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
            Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
        else
            " coc.nvim need yarn global add vim-node-rpc (https://github.com/neoclide/vim-node-rpc)
            Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}
            "Plug 'Shougo/deoplete.nvim'
            "Plug 'zchee/deoplete-jedi'
            Plug 'roxma/nvim-yarp'
            Plug 'roxma/vim-hug-neovim-rpc'
        endif
    else
        Plug 'maralla/completor.vim'
    endif
else
    Plug 'scrooloose/syntastic'
    if v:version >= 7.4.1578
        Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer'}
        Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    endif

    " for python
    Plug 'heavenshell/vim-pydocstring'
    " Plug 'klen/python-mode'
    Plug 'davidhalter/jedi-vim', {'for': 'python'}
    Plug 'tell-k/vim-autopep8', {'for': 'python'}
endif

Plug 'Valloric/MatchTagAlways'
" Plug 'michaeljsmith/vim-indent-object'
Plug 'google/vim-searchindex'
" colorize all text in the form #rrggbb or #rgb
Plug 'chrisbra/Colorizer'
" css/less/sass/html color preview for vim
Plug 'gorodinskiy/vim-coloresque'
" helps to end certain structures automatically
Plug 'tpope/vim-endwise'
" Insert or delete brackets, parens, quotes in pair.
" Plug 'jiangmiao/auto-pairs'
" automatic closing of quotes, parenthesis, brackets, etc.
" Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', {'for': 'go'}

" fuzzy file&buffer&str searching tools
Plug 'rking/ag.vim'
"Plug 'kien/ctrlp.vim'
"Plug 'szw/vim-ctrlspace'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" edit ipython notebook
"Plug 'szymonmaszke/vimpyter'
Plug 'goerz/jupytext.vim'

" The interactive scratchpad for hackers.
Plug 'metakirby5/codi.vim'

" True Sublime Text style multiple selections for Vim
" Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi'
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
Plug 'gyim/vim-boxdraw'

Plug 'jistr/vim-nerdtree-tabs'
Plug 'gregsexton/MatchTag'
Plug 'vim-scripts/vst_with_syn'

" input method fuzzy
"Plug 'qytz/vim-barbaric'
" Plug 'christoomey/vim-tmux-navigator'
" Add plugins to &runtimepath
Plug 'brglng/vim-im-select'
call plug#end()
