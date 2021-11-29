" ALE
let g:ale_fix_on_save = 1 " Set this variable to 1 to fix files when you save them.
let g:ale_sign_column_always = 1    " keep the sign gutter open at all times
" let g:ale_sign_error = '>>'     " specify what text should be used for signs
" let g:ale_sign_warning = '--'   " specify what text should be used for signs

let g:ale_linters = {
\    'python': ['flake8', 'black', 'mypy', 'pyls'],
\    'rust': ['rls', 'cargo', 'rustfmt']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['isort', 'black'],
\   'json': ['jq'],
\   'javascript': ['prettier', 'eslint'],
\   'rust': ['rustfmt'],
\   'go': ['gofmt', 'goimports']
\ }

"let g:ale_python_black_options = ""
let g:ale_python_flake8_options= "--max-line-length 300"  " no complains
let g:ale_python_mypy_options= "--ignore-missing-imports --incremental"

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
let g:ale_completion_autoimport = 1
