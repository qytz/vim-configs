" ----------------------------------------
" Bindings
" ----------------------------------------
" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","

" Fixes common typos
command! W w
command! Q q

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
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Clear search
map <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" ---------------
" Leader Commands
" ---------------
" Toggle spelling mode with ,s
nmap <silent> <leader>s :set spell!<CR>
" Edit vimrc with ,v
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>
" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

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

" Split window vertically or horizontally *and* switch to the new split!
nmap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nmap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" Close the current window
nmap <silent> <leader>sc :close<CR>

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

" Format the entire file
nmap <leader>fef ggVG=

" Wrap the current line
nmap <leader>fw Vgq

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

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

" Writes the current buffer unless we're the in QuickFix mode.
" ---------------
function WriteBuffer()
    if &filetype == "qf"
        execute "normal! \<enter>"
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

set pastetoggle=<F9>
