let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

set pastetoggle=<F2>
nnoremap <F3> :set number!<cr>
nnoremap <F4> :set relativenumber!<cr>
nnoremap <F5> :NERDTreeToggle<cr>
nnoremap <F6> :TagbarToggle<cr>
nnoremap <F7> :PanguDisable<cr>
" Autoformat
noremap <F8> :ALEFix<CR>
" autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
nnoremap <F10> :call call(function('BuildCscopeDatabase'), [1, 1, 0])<CR>
nnoremap <F9> :call call(function('ConnectCscopeDatabase'), [])<CR>

" Gundo
nnoremap <leader>ud :GundoToggle<CR>

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
let g:airline_theme = 'luna'
"let g:airline_theme = 'light'
"let g:airline_theme = 'molokai'
"let g:airline_theme = 'papercolor'
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#whitespace#enabled = 1
" let g:airline#extensions#tabline#enabled = 1

" UltiSnips
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
"let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_python_style="google"

" neocomplete settings
"source ~/.vim/pluginconfig/neocomplete.vim
" cscope settings
set cscopetag
" cscope key bindings
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>

" vim-expand-region
"map J <Plug>(expand_region_expand)
"map K <Plug>(expand_region_shrink)

" vim-better-whitespace
autocmd FileType c,h,py,pyw,vim,js,cpp autocmd BufWritePre <buffer> StripWhitespace

" PanGu for Chinese typesetting
" autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx,*.rst,*.py call PanGuSpacing()
autocmd BufWritePre * call PanGuSpacing()

" vim-javascript
let g:javascript_enable_domhtmlcss=1

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-ctrlspace
let g:CtrlSpaceDefaultMappingKey = "<Leader><Space>"

"source ~/.vim/neocomplete.vim
if v:version < 800
    source ~/.vim/ycm.vim
    " for syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_mode_map = {
                \ "mode": "passive",
                \ "active_filetypes": [],
                \ "passive_filetypes": [] }
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 0
    let g:syntastic_python_checkers = ['pylint']
    " let g:syntastic_python_checkers = ['pylint', 'flake8']
endif


let g:instant_rst_port = 8899

" pymode
""let g:pymode_python = 'python'
""let g:pymode_warnings = 1
""let g:pymode_trim_whitespaces = 1
""let g:pymode_options = 1
""let g:pymode_lint_on_write = 0

" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#completions_enabled = 0

" for vimpyter
autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>

" for easymotion
map <Leader>e <Plug>(easymotion-prefix)

let g:deoplete#enable_at_startup = 1

" ALE
"let g:ale_python_black_options = ""
let g:ale_python_flake8_options= "--max-line-length 300"  " no complains
let g:ale_python_mypy_options= "--ignore-missing-imports --incremental"
let g:ale_linters = {'python': ['flake8', 'black', 'mypy', 'pyls']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['isort', 'black'],
\   'json': ['jq'],
\   'javascript': ['prettier', 'eslint']
\ }
" let g:ale_fix_on_save = 1 " Set this variable to 1 to fix files when you save them.
let g:ale_sign_column_always = 1    " keep the sign gutter open at all times
" let g:ale_sign_error = '>>'     " specify what text should be used for signs
" let g:ale_sign_warning = '--'   " specify what text should be used for signs
" for navigate between errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" --- ALE settings ---
"
" Disable ALE warnings about trailing whitespace.
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_maximum_file_size = 1024 * 1024
let g:ale_completion_enabled = 0
let g:ale_set_balloons_legacy_echo = 1
let g:ale_c_parse_compile_commands = 1

" Options for different linters.
let g:ale_python_mypy_ignore_invalid_syntax = 1
"let g:ale_python_mypy_options = '--incremental'
let g:ale_typescript_tslint_ignore_empty_files = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
