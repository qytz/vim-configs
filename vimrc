"source ~/.vim/vundles.vim
source ~/.vim/plugins.vim
"source ~/.vim/neobundle.vim
filetype plugin indent on
for fname in split(glob('~/.vim/configs/*.vim'), '\n')
    exe 'source' fname
endfor
source ~/.vim/configs/base.vim
