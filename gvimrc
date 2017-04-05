"source ~/.vim/vimrc

" Vim
" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"             for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
" set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

"
" Laurence's cool vimdiff setup
"
func DiffSetup()
  " Make a full screen top-level-window with all sub-window equal-size
  " winpos 0 25
  winpos 0 0
  " winpos 0 35

  " Big work monitor size
  set columns=195
  set lines=70

  " scolloff makes the diff funny.  turn it off
  set scrolloff=0

  " Work monitor size
  " set columns=176
  " set lines=75

  " Home monitor size
  " set columns=172
  " set lines=62

  wincmd =
  " colorscheme default
  colorscheme peaksea
  nmap q :qa<CR>
  nmap n ]c
  nmap s :set diffopt=filler,iwhite<CR>

  " disable folding -- I think it's one of those cool ideas that doesn't
  " work so well in practice. :-(
  set nofoldenable foldcolumn=0
  wincmd b
  set nofoldenable foldcolumn=0

  " find the only non empty non-perforce filetype, if there is one
  let wincount = winnr()
  let ft = ''
  let ok = 1
  let w = 1
  while ok && w <= wincount
    if getwinvar(w, '&diff')
      e!
      let bft = getbufvar(winbufnr(w), '&filetype')
      if bft != '' && bft != 'perforce'
        if ft != ''
          if ft != bft
            let ok = 0
          endif
        else
          let ft = bft
        endif
      endif
    endif
    let w = w + 1
  endwhile

  " set all diff windows to use the one true filetype, if we found one
  if ok && ft != ''
    let w = 1
    while w <= wincount
      if getwinvar(w, '&diff')
        call setbufvar(winbufnr(w), '&filetype', ft)
      endif
      let w = w + 1
    endwhile
  endif
  syntax on
  1
endfun

" kjm - try vim without the DiffSetup() for now
" if &diff
"   autocmd VimEnter * call DiffSetup()
" endif

set mousehide                " Turn off mouse when typing
set guioptions-=T            " Remove toolbar
set guioptions+=c            " Use console dialogs when possible
set guioptions-=r            " Remove right hand scrollbar
set guioptions-=L            " Remove left-hand scrollbar (for v-split)
set visualbell t_vb=         " Turn off flashing (needs to be in gvimrc too)
" set guicursor=a:blinkon0   " turn off cursor blinking
set guicursor=a:blinkon600-blinkoff400  " Slow down cursor blinking speed


"
" set the size for win32
"
if ! has("unix")
   set lines=42
   set columns=80
   set guifont=Courier_New:h8
else
   " set guifont=-schumacher-clean-medium-r-normal-*-*-120-*-*-c-*-iso646.1991-irv
   " set guifont=fixed
   " Work
   " set guifont=-monotype-andale\ mono-medium-r-normal-*-*-80-*-*-m-*-iso8859-1
   " GTK-2 has a new font-name style
   " set guifont=Andale\ Mono\ 8
   " set guifont=Andale\ Mono\ 10
   " set guifont=Terminus\ 8
   set guifont=Dejavu\ Sans\ Mono\ Book\ 16

endif
