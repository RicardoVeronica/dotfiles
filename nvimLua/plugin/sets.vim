" general settings
filetype plugin on                        " enable filetype search
syntax enable                             " better syntax
syntax on                                 " color in syntax
set nocompatible                          " disable vi compatibility mode
set ttyfast                               " vim Faster
set mouse=a                               " allow mouse selector
set clipboard=unnamed                     " clipboard functionality
set background=dark                       " background dark
set colorcolumn=79                        " colum limit
set scrolloff=3                           " 3 spaceses while scrolling
set nohlsearch                            " no recursive result in search
set nohlsearch                            " no remain the search
set nowrap                                " no wrap in files
set number                                " show a line number
set relativenumber                        " relative numbers in line numbers
set smartcase                             " search in smartcase
set noswapfile                            " no swap files
set nobackup                              " if you need backup use git
set cursorline                            " highlight in actual line
set cursorcolumn                          " highlight in actual colum
set showmatch                             " highlight parenteses and brackets
set lazyredraw                            " the screen not redraw
set incsearch                             " mark while searching words
set nu                                    " numbers and lines for better style

" menubar
set laststatus=2                          " always show status bar
set showmode                              " always show vim mode
set wildmenu                              " enable menu options with tab
set ruler                                 " enable ruler percent

" indentation
set shiftwidth=2                          " space in identation
set softtabstop=2                         " same identation when run back
set expandtab                             " space no tabs
set autoindent                            " auto indent always on
set smartindent                           " better indentation

" python and django templates
autocmd FileType py setlocal shiftwidth=4 softtabstop=4
au BufNewFile,BufRead *.html set filetype=htmldjango

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,astro,php EmmetInstall

" php
autocmd FileType php setl formatexpr=CocAction('formatSelected')
autocmd FileType php nmap <silent><buffer> gd <Plug>(coc-definition)
