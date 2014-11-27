
" tagbar
nnoremap <F8> :TagbarToggle<cr>
let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
let g:tagbar_singleclick = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_previewwin_pos = "aboveleft"
" default no preview window, use it with P
let g:tagbar_autopreview = 0

" pymode
let g:pymode_python = 'python'
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_lint_on_write = 0

" supertab
"let g:SuperTabMappingBackward = "<S-Tab>"
"let g:SuperTabMappingForward = "<S-Tab>"
"let g:SuperTabMappingTabLiteral = "<tab>"

" vim-startify
let g:startify_custom_header =
            \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" airline
let g:airline_theme = 'light'
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#whitespace#enabled = 1

" syntastic
let g:syntastic_check_on_wq = 0

" YankRing
nnoremap <silent> <F3> :YRShow<CR>
let g:yankring_replace_n_pkey=''

" gundo
nnoremap <F2> :GundoToggle<CR>

" NerdTree
nnoremap <F4> :NERDTreeToggle<cr>

" buffer explorer
nnoremap <F7> :BufExplorer<cr>

" DoxygenToolkit.vim
let g:DoxygenToolkit_authorName = 'lenny'
let g:DoxygenToolkit_versionString = '1.0'

" neocomplete settings
"source ~/.vim/pluginconfig/neocomplete.vim
" cscope settings
source ~/.vim/pluginconfig/cscope.vim
" youcompleteme settings
source ~/.vim/pluginconfig/youcompleteme.vim
