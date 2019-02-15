" Note: This line MUST come before any <leader> mappings
let mapleader=" "
"nnoremap s <Nop>
"let mapleader = "s"

set backup
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap

if v:version >= 703
    "undo settings
    set undodir=~/.vim/.undofiles
    set undofile
    "set colorcolumn=+1 "mark the ideal max text width
endif

"some stuff to get the mouse going in term
"set mouse=a
set ttymouse=xterm2

" ---------------
" Show & Format
" ---------------
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set number      "show line numbers
"display tabs and trailing spaces
set list
set listchars=tab:▷\ ,trail:⋅,nbsp:⋅

set colorcolumn=100
set cursorline
set laststatus=2 "always show statusline
set wrap        "wrap lines
set linebreak   "wrap lines at convenient points
set textwidth=100   "auto newline when >100
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
set completeopt+=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt-=preview

" ------------------------
" vertical/horizontal scroll off settings
" ------------------------
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" ------------------------
" File formats & encoding
" ------------------------
" File encoding
set fileencoding=utf8
" detect file encodings list below:
" gb18030 should be before UTF-8
set fileencodings=utf-8,gb18030,default
set formatoptions-=o "dont continue comments when pushing o/O
" Vim支持在编辑文本时自动折行，但默认对中文折行的支持并不理想，建议添加如下两个设置：
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B


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
nmap <leader>ff ggVG=

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
nnoremap <C-]> :bnext<CR>
nnoremap <C-\> :bprevious<CR>
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

" ---------------
" Color Scheme
" ---------------
silent! set term=screen-256color
silent! set t_Co=256
set background=dark
" colorscheme
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"set background=dark
"colorscheme solarized
"colorscheme primary
"colorscheme PaperColor
colorscheme desert256

" make the colorscheme transparent for terminal
highlight Normal ctermbg=NONE
