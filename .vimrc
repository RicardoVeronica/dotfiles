
set encoding=utf-8  " Always use unicode (Windows)

set nocompatible  " Disable vi compatibility mode

set noswapfile  " No swap files

set nobackup  " If you need backup something use Git

set number  " Show a line number

set backspace=indent,eol,start  " Backspace always work on insert mode (Windows)

syntax on  " Color in syntax

set shiftwidth=4  " Space in identation

set softtabstop=4  " Same identation when run back

" 2 space indenting in html, css and javascript
autocmd FileType html,css,javascript
     \ setlocal shiftwidth=2 softtabstop=2

set expandtab  " Space no tabs

set autoindent  " Autoident always on

set relativenumber  " Relative numbers in line numbers

set nowrap  " No wrap in long lines

set cursorline  " Highlight in line

set cursorcolumn  " Highlight in column 

set showmode  " Always show mode

set laststatus=2  " Always show status bar

set wildmenu  " Enable menu options whit tab

set ruler  " Enable ruler percent

set showmatch  " Highlight parentheses and brackets
