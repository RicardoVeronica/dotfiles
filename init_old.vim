" ===============================================
"            Add basics configuration
" ===============================================
set mouse=a            " Allow mouse selection
syntax on              " Color in syntax
set nocompatible       " Disable vi compatibility mode
set colorcolumn=79     " Column limit
set number             " Show a line number
set relativenumber     " Relative numbers in line numbers
set noswapfile         " No swap files
set nobackup           " If you need backup something use Git
set cursorline         " Highlight in line
set cursorcolumn       " Highlight in column 
set showmatch          " Highlight parentheses and brackets
set clipboard=unnamed  " Copy in VIM stay in your OS clipboard
set showcmd
set ttyfast            "" vim Faster
set lazyredraw

" Status bar
set showmode           " Always show mode
set laststatus=2       " Always show status bar
set wildmenu           " Enable menu options whit tab
set ruler              " Enable ruler percent

" For other OS
set encoding=utf-8              " Always use unicode
set backspace=indent,eol,start  " Backspace always work on insert mode

" Spaces and indentation
set shiftwidth=2       " Space in identation
set softtabstop=2      " Same identation when run back
set expandtab          " Space no tabs
set autoindent         " Autoident always on

" Spaces indenting in web languages files
autocmd FileType py setlocal shiftwidth=4 softtabstop=4
" autocmd FileType html setlocal shiftwidth=2 softtabstop=2
" autocmd FileType js setlocal shiftwidth=2 softtabstop=2
" autocmd FileType css setlocal shiftwidth=2 softtabstop=2

" syntax for django templates
au BufNewFile,BufRead *.html set filetype=htmldjango


" ===============================================
"               Plug start
" ===============================================

if empty(glob("~/.config/nvim/autoload/plug.vim"))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd vimEnter * PlugInstall --sync | source $MYVIMRC
  endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-buftabline'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim' 
Plug 'gko/vim-coloresque'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/loremipsum'
Plug 'digitaltoad/vim-pug'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

" ===============================================
"                    maps
" ===============================================

" leader key
let mapleader=","

" change esc key 
inoremap ii <esc>

" some easy moves
nmap <leader>x :bd<cr>
nmap <leader>q :q<cr>
nmap <leader>z :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>e :wq<cr>

" don't have arrow keys in normal mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" window navigation
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l


"================================================
"           maps plugins & options
"================================================

" save root file :w!!
cmap w!! w !sudo dd of=%<enter>

" php lint
map <F2> :!php -l %<CR>

" nerdtree
nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=25
" let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['^node_modules$']

" impsort
nmap <leader>. :ImpSort<cr>

" buftabline
set hidden
nnoremap <leader>2 :bnext<cr> 
nnoremap <leader>1 :bprev<cr> 

" tagbar
nmap <f8> :TagbarToggle<cr>
let tagbar_width=28

" fzf
map <C-f> <Esc><Esc>:Files!<CR>
let $FZF_DEFAULT_OPTS='--reverse'

" git fugitive
nmap <leader>gs :G<CR>

" easymotion
nmap <leader>f <Plug>(easymotion-s2)

" ultisnips
let g:UltiSnipsExpandTrigger="<leader>a"

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-docker',
  \ 'coc-markdownlint'
  \ ]

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ===============================================
"                  Functions
" ===============================================

" Color default
if &t_Co >= 256 || has("gui-running")
    color Tomorrow-Night
endif

" Relative number on/off
nmap <F5> :call ToggleRelativeNumber()<cr>
imap <F5> <Esc>: call ToggleRelativeNumber()<cr>a

" Relative number
function! ToggleRelativeNumber()
    if &relativenumber == 1
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction
