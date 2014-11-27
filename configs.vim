" -----------------------------
" Backups, Tmp Files, and Undo
" -----------------------------
set backup
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap

if v:version >= 703
    "undo settings
    set undodir=~/.vim/.undofiles
    set undofile

    "set colorcolumn=+1 "mark the ideal max text width
endif


" ---------------
" UI
" ---------------
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set number      "show line numbers
"display tabs and trailing spaces
set list
set listchars=tab:▷\ ,trail:⋅,nbsp:⋅

"some stuff to get the mouse going in term
"set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

"line is too long
"set colorcolumn=100

set cursorline

" always show statusline
set laststatus=2

" colorscheme
"syntax enable
set background=dark
colorscheme wombat

" set guifont
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 14
    "set guifontwide=Droid\ Sans\ Mono\ 14
endif


" ---------------
" Text Format
" ---------------
"default indent settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set autoindent

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc"


" ---------------
" Behaviors
" ---------------
"turn on syntax highlighting
syntax on
"allow backspacing over everything in insert mode
set backspace=indent,eol,start
"store lots of :cmdline history
set history=1000

set wrap        "wrap lines
set linebreak   "wrap lines at convenient points

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" add html matchpairs
set matchpairs+=<:>

" auto add tags file updirs
:set tags=tags;/

" File encoding
set fileencoding=utf8
" detect file encodings list below:
" gb18030 should be before UTF-8
set fileencodings=utf-8,gb18030,default
" Vim支持在编辑文本时自动折行，但默认对中文折行的支持并不理想，建议添加如下两个设置：
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" " 合并两行中文时，不在中间加空格：
set formatoptions+=B

" save before jump to other buf
set autowriteall

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

" completation
" let Vim's popup menu like other IDE(ref: VimTip1228)
set completeopt+=longest
set completeopt-=preview
" close popup menu window when leave insert mode
autocmd InsertLeave * if pumvisible()==0|pclose|endif
" select current item when press <CR>
inoremap <expr> <CR>  pumvisible()?"\<C-y>":"\<CR>"

" ---------------
" Plugin settings
" ---------------
"nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
"hacks from above (the url, not jesus) to delete fugitive buffers when we
"leave them - otherwise the buffer list gets poluted
"
"add a mapping on .. to view parent tree
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost fugitive://*
            \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
            \   nnoremap <buffer> .. :edit %:h<CR> |
            \ endif

let yankring_manual_clipboard_check=0

set foldlevel=10

" avoid hit-enter prompts caused by file messages
set shortmess=a

" autocmds
source ~/.vim/config/autocmds.vim
" key bindings
source ~/.vim/config/bindings.vim
