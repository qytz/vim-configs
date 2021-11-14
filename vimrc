"source ~/.vim/vundles.vim
source ~/.vim/vim-plugin.vim
"source ~/.vim/neobundle.vim
filetype plugin indent on
for fname in split(glob('~/.vim/configs/*.vim'), '\n')
    exe 'source' fname
endfor
source ~/.vim/configs/base.vim
