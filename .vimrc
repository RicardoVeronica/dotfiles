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
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
