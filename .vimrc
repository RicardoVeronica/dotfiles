" My .vimrc configuration

" Add basics configuration
set nocompatible       " Disable vi compatibility mode
set colorcolumn=79     " Like pep8
syntax on              " Color in syntax
set number             " Show a line number
set relativenumber     " Relative numbers in line numbers
set noswapfile         " No swap files
set nobackup           " If you need backup something use Git
set nowrap             " No wrap in long lines
set cursorline         " Highlight in line
set cursorcolumn       " Highlight in column 

" Status bar
set showmode           " Always show mode
set laststatus=2       " Always show status bar
set wildmenu           " Enable menu options whit tab
set ruler              " Enable ruler percent
set showmatch          " Highlight parentheses and brackets

" For windows
set encoding=utf-8              " Always use unicode
set backspace=indent,eol,start  " Backspace always work on insert mode

" Spaces and indentation
set shiftwidth=4       " Space in identation
set softtabstop=4      " Same identation when run back
set expandtab          " Space no tabs
set autoindent         " Autoident always on

" 2 space indenting in html, css and javascript
autocmd FileType html,css,javascript
    \ setlocal shiftwidth=2 softtabstop=2



" Vundle start
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Basic plugins
Plugin 'scrooloose/nerdtree'             " File manager
Plugin 'scrooloose/syntastic'            " 
Plugin 'tpope/vim-surround'              " Change brackets, parent, etc
Plugin 'Townk/vim-autoclose'             " Close all parent, brackets, etc
Plugin 'ap/vim-buftabline'               " Tranfor buffers in tabs

" Colors
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'

" Python
Plugin 'davidhalter/jedi-vim'            " 
Plugin 'klen/python-mode'                " 
Plugin 'mitsuhiko/vim-jinja'             " Jinja in vim 
Plugin 'mitsuhiko/vim-python-combined'   " 
Plugin 'hynek/vim-python-pep8-indent'    " Indent like pep8
Plugin 'jmcantrell/vim-virtualenv'       " Virtualenv in vim

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end

" Maps
let mapleader=","

" NERDTree
nmap <Leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=21

" Buftabline
set hidden
nnoremap <C-N> :bprev<cr> 
nnoremap <C-M> :bnext<cr> 

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
