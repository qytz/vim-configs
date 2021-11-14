let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

" Toggle Codi
nnoremap <leader>ru :Codi!!<CR>
" Gundo
nnoremap <leader>ud :GundoToggle<CR>

" vim-startify
let g:startify_custom_header =
            \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" vim-better-whitespace
autocmd FileType c,h,py,pyw,vim,js,cpp,go,rs autocmd BufWritePre <buffer> StripWhitespace

" PanGu for Chinese typesetting
" autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx,*.rst,*.py call PanGuSpacing()
" autocmd BufWritePre * call PanGuSpacing()

" vim-javascript
let g:javascript_enable_domhtmlcss=1

" for easymotion
" map <Leader><Leader> <Plug>(easymotion-prefix)
