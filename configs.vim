" Note: This line MUST come before any <leader> mappings
let mapleader=" "
"nnoremap s <Nop>
"let mapleader = "s"

"set backup
"set backupdir=~/.vim/.backup
set nobackup
set nowritebackup
set directory=~/.vim/.swap

if v:version >= 703
    "undo settings
    set undodir=~/.vim/.undofiles
    set undofile
    "set colorcolumn=+1 "mark the ideal max text width
endif

"some stuff to get the mouse going in term
"set mouse=a
if !has('nvim')
    set ttymouse=xterm2
endif

" ------------------------
" File formats & encoding
" ------------------------
set encoding=utf8
" File encoding
set fileencoding=utf8
" detect file encodings list below:
" gb18030 should be before UTF-8
set fileencodings=utf-8,gb18030,default
set formatoptions-=o "dont continue comments when pushing o/O
" Vim 支持在编辑文本时自动折行，但默认对中文折行的支持并不理想，建议添加如下两个设置：
" 如遇 Unicode 值大于 255 的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B

" ---------------
" Show & Format
" ---------------
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set number      "show line numbers
"display tabs and trailing spaces
set list
set listchars=tab:▷\ ,trail:⋅,nbsp:⋅

set cursorline
set laststatus=2 "always show statusline
set wrap        "wrap lines
set linebreak   "wrap lines at convenient points
set textwidth=120   "auto newline when >120
set colorcolumn=120
"set wrapmargin=2   "count columns from right
set showmatch   "highlight marched brackets
" set guifont
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 14
    "set guifontwide=Droid\ Sans\ Mono\ 14
endif
set hidden  "hide buffers when not displayed

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
set smartindent

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
" Folding settings
" ---------------
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldlevel=10

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set completeopt+=longest,menu    "让 Vim 的补全菜单行为与一般 IDE 一致（参考 VimTip1228)
set completeopt-=preview

" ------------------------
" vertical/horizontal scroll off settings
" ------------------------
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" ------------------------
" Auto saving & reading settings
" ------------------------
" save before jump to other buf
set autowriteall

" close popup menu window when leave insert mode
autocmd InsertLeave * if pumvisible()==0|pclose|endif
" select current item when press <CR>
inoremap <expr> <CR>  pumvisible()?"\<C-y>":"\<CR>"
" auto-save configs
set autoread " auto-reload when the editing file updated by other program
au FocusLost * silent! up " auto-save when lost focus
au BufLeave * silent! up " auto-save when leave buffer
" Fixes common typos
command! W w
command! Q q

" ------------------------
" Misc settings
" ------------------------
set shortmess=a " avoid hit-enter prompts caused by file messages
syntax on "turn on syntax highlighting
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set history=1000 "store lots of :cmdline history
set matchpairs+=<:> " add html matchpairs
set tags=tags;/ " auto add tags file updirs
"set spell spelllang=en_us,cjk

" ---------------
" Mapping & shortkeys
" ---------------
if has("autocmd")
    " No formatting on o key newlines
    autocmd BufNewFile,BufEnter * set formatoptions-=o

    " No more complaining about untitled documents
    " autocmd FocusLost silent! :wa

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line ("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif

    autocmd FileType python setlocal et sta sw=4 sts=4
    autocmd FileType python setlocal foldmethod=indent

    "spell check when writing commit logs
    autocmd filetype svn,*commit* setlocal spell
endif

" Make line completion easier.
imap <C-l> <C-x><C-l>

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Yank entire buffer with gy
nmap gy :%y+<cr>

" Make Y behave like other capital commands.
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $
inoremap <C-J> <Home>
inoremap <C-K> <End>

nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Split window vertically or horizontally *and* switch to the new split!
set splitright
nmap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nmap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>
" Close the current window
nmap <silent> <leader>sc :close<CR>

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>

" Format the entire file
" nmap <leader>ff ggVG=

"map Q to something useful
noremap Q gq

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

" Writes the current buffer unless we're the in QuickFix mode.
" ---------------
function! WriteBuffer()
    if !&modifiable
        execute "normal! \<CR>"
    else
        :write
    endif
endfunction
noremap <silent> <enter> :call WriteBuffer()<CR>

" j,k just move one screen line
nnoremap j gj
nnoremap k gk

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" buffers nav
" nnoremap <C-]> :bnext<CR>
" nnoremap <C-\> :bprevious<CR>
" Window Movement
" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"nmap <silent> gh :wincmd h<CR>
"nmap <silent> gj :wincmd j<CR>
"nmap <silent> gk :wincmd k<CR>
"nmap <silent> gl :wincmd l<CR>
" Upper left window
"nmap <silent> g1 :wincmd t<CR>
" Upper right window
"nmap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
"nmap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
"nmap <silent> g4 :wincmd b<CR>

" Previous Window
"nmap <silent> gp :wincmd p<CR>
" Equal Size Windows
"nmap <silent> g= :wincmd =<CR>
" Swap Windows
"nmap <silent> gx :wincmd x<CR>

" open omni completion menu closing previous if open and opening new menu without changing the text
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

if v:version > 703
    " This makes copy and paste also work better.
    set clipboard=unnamedplus
    if has('macunix')
        set clipboard=unnamed
    endif
endif
" Automatically re-open files after they have changed without prompting.
" This can be a little more destructive, but a lot less annoying.
set autoread

" Automatically reload vimrc on save
augroup ReloadVimrcGroup
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" ---------------
" Color Scheme
" ---------------
"silent! set term=screen-256color
silent! set t_Co=256
set background=dark
" colorscheme
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"set background=dark
"colorscheme solarized
"colorscheme primary
"colorscheme PaperColor
"colorscheme one
"colorscheme moonfly
"colorscheme darkspectrum
colorscheme desert256
"colorscheme nord

" make the colorscheme transparent for terminal
hi Normal guibg=NONE ctermbg=NONE

" --- from coc ---
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
