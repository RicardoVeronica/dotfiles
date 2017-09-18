" My .vimrc configuration

" Add basics configuration
set nocompatible  " Disable vi compatibility mode
set colorcolumn=79  " pep8 column
syntax on  " Color in syntax
set number  " Show a line number
set relativenumber  " Relative numbers in line numbers
set noswapfile  " No swap files
set nobackup  " If you need backup something use Git
set nowrap  " No wrap in long lines
set cursorline  " Highlight in line
set cursorcolumn  " Highlight in column 

" Status bar
set showmode  " Always show mode
set laststatus=2  " Always show status bar
set wildmenu  " Enable menu options whit tab
set ruler  " Enable ruler percent
set showmatch  " Highlight parentheses and brackets

" For windows
set encoding=utf-8  " Always use unicode
set backspace=indent,eol,start  " Backspace always work on insert mode

" Spaces and indentation
set shiftwidth=4  " Space in identation
set softtabstop=4  " Same identation when run back
set expandtab  " Space no tabs
set autoindent  " Autoident always on

" 2 space indenting in html, css and javascript
autocmd FileType html,css,javascript
    \ setlocal shiftwidth=2 softtabstop=2

" Vundle
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Basic plugins
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

" Python
Plugin 'dhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'mitsuhiko/vim-python-combined'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'jmcantrell/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
