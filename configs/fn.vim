set pastetoggle=<F2>
nnoremap <F3> :set number!<cr>
nnoremap <F4> :set relativenumber!<cr>
nnoremap <F5> :NERDTreeToggle<cr>
" nnoremap <F6> :TagbarToggle<cr>
" noremap <F6> :Leaderf bufTag<CR>
nnoremap <F6> :Vista!!<cr>
nnoremap <F7> :PanguDisable<cr>
" Autoformat
noremap <F8> :ALEFix<CR>
" autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
nnoremap <F9> :call call(function('ConnectCscopeDatabase'), [])<CR>
nnoremap <F10> :call call(function('BuildCscopeDatabase'), [1, 1, 0])<CR>
