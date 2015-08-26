let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

nnoremap <F7> :NERDTreeToggle<cr>
nnoremap <F8> :TagbarToggle<cr>

let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
let g:tagbar_singleclick = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_previewwin_pos = "aboveleft"
" default no preview window, use it with P
let g:tagbar_autopreview = 0

" vim-startify
let g:startify_custom_header =
            \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" airline
let g:airline_theme = 'light'
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#whitespace#enabled = 1

" syntastic
let g:syntastic_check_on_wq = 0

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" UltiSnips
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
"let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" neocomplete settings
"source ~/.vim/pluginconfig/neocomplete.vim
" cscope settings
set cscopetag
" cscope key bindings
nnoremap <F6> :call call(function('BuildCscopeDatabase'), [1, 1, 0])<CR>
map <F5> :call call(function('ConnectCscopeDatabase'), [])<CR>
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" vim-expand-region
"map J <Plug>(expand_region_expand)
"map K <Plug>(expand_region_shrink)

" vim-better-whitespace
autocmd FileType c,h,py,pyw,vim,js,cpp autocmd BufWritePre <buffer> StripWhitespace

" vim-javascript
let g:javascript_enable_domhtmlcss=1

" vim-ctrlspace
let g:ctrlspace_default_mapping_key="<Leader><Space>"

if g:vim_clean_mode == 0
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

    " rust-doc
    let g:rust_doc#downloaded_rust_doc_dir = '~/.vim/rust-1.0.0-i686-unknown-linux-gnu/rust-docs'

    nnoremap <C-p> :Unite file_rec/async<cr>
    nnoremap <leader>ug :Unite grep:.<cr>
    nnoremap <space>s :Unite -quick-match buffer<cr>
endif

"source neocomplete.vim
source ycm.vim
