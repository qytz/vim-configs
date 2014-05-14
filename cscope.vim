" We need to setup the function that reset cscope.
"You could define this in your vimrc instead.

if has("autocmd")
    autocmd VimEnter * call LoadCscope()
    "autocmd BufAdd *.[ch] call FindGtags(expand('<afile>'))
    "autocmd BufWritePost *.[ch] call UpdateCscope(expand('<afile>'))
endif

set cscopetag

let s:cscopepath = "./"
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let s:cscopepath = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . s:cscopepath
        set cscopeverbose
    endif
endfunction

function! UpdateCscope()
    if s:cscopepath != "./"
        execute 'cd' fnameescape(s:cscopepath)
    endif
    !cscope -RUb<CR>
    cscope kill -1
    call LoadCscope()
endfunction

" cscope key bindings
nnoremap <F6> :call UpdateCscope()<CR><CR><CR>
map <F12> :call LoadCscope()<CR>
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

