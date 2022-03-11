" set specific linters
let g:ale_linters = {
\ 'ruby': ['rubocop'],
\ 'elixir': ['elixir-ls']
\}

" only run linters named in ale_linters settings
let g:ale_linters_explicit = 1

" airline integration
let g:airline#extensions#ale#enable = 1

