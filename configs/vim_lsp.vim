function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    " nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    " nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> <C-k> <plug>(lsp-previous-diagnostic)
    nmap <buffer> <C-j> <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)

    " nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    " nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 3000
    autocmd! BufWritePre <buffer> call execute('LspCodeActionSync source.organizeImports')
    autocmd! BufWritePre *.rs,*.go,*.py,*.js,*.ts,*.vue call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

let g:lsp_settings_filetype_vue = ['typescript-language-server', 'volar-server']
" let g:lsp_tagfunc_source_methods = ['definition', 'declaration', 'implementation', 'typeDefinition']
let g:lsp_tagfunc_source_methods = ['definition' ]

" let g:lsp_settings_filetype_python = ['pylsp-all', 'ruff-lsp']
" let g:lsp_settings = {
" \   'filetype': {'python': 'pylsp-all'},
" \   'pylsp': {
" \             'plugins': {
" \                 'black': {'enabled': v:true},
" \             },
" \   },
" \ }
