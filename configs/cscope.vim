" cscope settings
set cscopetag
" cscope key bindings
" Find this C symbol
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
" Find this definition
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
" Find functions calling this function
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
" Find assignments to
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
" Find this egrep pattern
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
" Find this file
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
" Find files #including this file
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
" Find functions called by this function
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
