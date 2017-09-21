" My .vimrc configuration

" ===============================================
"            Add basics configuration
" ===============================================
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

" For other OS
set encoding=utf-8              " Always use unicode
set backspace=indent,eol,start  " Backspace always work on insert mode

" Spaces and indentation
set shiftwidth=4       " Space in identation
set softtabstop=4      " Same identation when run back
set expandtab          " Space no tabs
set autoindent         " Autoident always on

" 2 space indenting in html, css and javascript
autocmd FileType html,css,javascript,json
    \ setlocal shiftwidth=2 softtabstop=2



" ===============================================
"               Vundle start
" ===============================================
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
Plugin 'ap/vim-buftabline'               " Transform buffers in tabs
Plugin 'ctrlpvim/ctrlp.vim'              " Helps to find files in a proyect

" Colors
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'

" Basic programming plugins
Plugin 'tpope/vim-surround'              " Change brackets, parent, etc
Plugin 'jiangmiao/auto-pairs'            " Auto clse brackets, parent, etc
Plugin 'majutsushi/tagbar'               " Navbar with functions, vars, etc
Plugin 'ervandew/supertab'               " Complete name functions and vars

" Git
Plugin 'airblade/vim-gitgutter'          " Git helps in files
Plugin 'tpope/vim-fugitive'              " Git comands in vim

" Python
Plugin 'davidhalter/jedi-vim'            " 
Plugin 'klen/python-mode'                " 
Plugin 'mitsuhiko/vim-jinja'             " Jinja in vim 
Plugin 'mitsuhiko/vim-python-combined'   " 
Plugin 'hynek/vim-python-pep8-indent'    " Indent like pep8
Plugin 'jmcantrell/vim-virtualenv'       " Virtualenv in vim 

call vundle#end()            " required
filetype plugin indent on    " required



"================================================
"                    Maps
" ===============================================
let mapleader=","

" Sorry but don't have arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" NERDTree
nmap <Leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=21

" Buftabline
set hidden
nnoremap <C-N> :bprev<cr> 
nnoremap <C-M> :bnext<cr> 

" Tagbar
nmap <F8> :TagbarToggle<cr>
let tagbar_width=19

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l



" ===============================================
"                  Functions
" ===============================================
" Color default
if &t_Co >= 256 || has("gui-running")
    color Tomorrow-Night
endif

" Relative number on/off
function! ToggleRelativeNumber()
    if &relativenumber == 1
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction

nmap <F5> :call ToggleRelativeNumber()<cr>
imap <F5> <Esc>: call ToggleRelativeNumber()<cr>a
