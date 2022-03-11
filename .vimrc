" ricardoveronica init.vim
" Author and maintainer: Ricardo Veronica Duran <hola@ricardoveronica.com>
" https://github.com/RicardoVeronica/dotfiles/blob/master/.vimrc

" LICENCE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" siut your needs and to make the changes yours. Attibution to this vimrc
" is not required although is thanked.
" Inspiration:
" Makigas - https://github.com/danirod/vimrc
" ThePrimeagen - https://github.com/ThePrimeagen/.dotfiles

" General settings
filetype plugin on                        " enable filetype search
syntax enable                             " color in syntax
syntax on                                 " syntax on files
set nocompatible                          " disable vi compatibility mode
set ttyfast                               " vim Faster
set mouse=a                               " allow mouse selection
set clipboard=unnamed                     " copy in VIM stay in your OS clipboard
set background=dark                       " background dark
set colorcolumn=79                        " column limit
set scrolloff=5                           " scroll with rows chance
set nohlsearch                            " no recursive result in search
set nowrap                                " no wrap in files
set number                                " show a line number
set relativenumber                        " relative numbers in line numbers
set smartcase                             " case sentitive searching
set noswapfile                            " no swap files
set nohlsearch                            " no remain the search
set nobackup                              " if you need backup something use Git
set cursorline                            " highlight in line
set cursorcolumn                          " highlight in column
set showmatch                             " highlight parentheses and brackets
set lazyredraw                            " the screen not redraw
set incsearch                             " mark while searching words
set nu                                    " numbers and lines for better style

" menubar
set laststatus=2                 " Always show status bar
set showmode                     " Always show mode
set wildmenu                     " Enable menu options whit tab
set ruler                        " Enable ruler percent

" indentation
set shiftwidth=2                 " Space in identation
set softtabstop=2                " Same identation when run back
set expandtab                    " Space no tabs
set autoindent                   " Autoident always on
set smartindent                  " Indent the better vim can
set backspace=indent,eol,start   " Backspace always work on insert mode
set encoding=utf-8               " Always use unicode
autocmd FileType py setlocal shiftwidth=4 softtabstop=4
au BufNewFile,BufRead *.html set filetype=htmldjango

" leader
let mapleader=","

" pluggins
call plug#begin()
" look

" colors
Plug 'morhetz/gruvbox'
" icons everywhere
Plug 'ryanoasis/vim-devicons'
" better look at bottom
Plug 'vim-airline/vim-airline'

" utilities

" file menu
Plug 'scrooloose/nerdtree'
" tabs in vim
Plug 'ap/vim-buftabline'
" find things easy
Plug 'easymotion/vim-easymotion'
" surround
Plug 'tpope/vim-surround'
" close pair like parenthesis
Plug 'jiangmiao/auto-pairs'

" programming

" snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" snippets works with tab
Plug 'ervandew/supertab'
" easy commentaries
Plug 'tpope/vim-commentary'
call plug#end()

" set color
colorscheme gruvbox

" maps
inoremap ii <esc>
nmap <leader>x :bd<cr>
nmap <leader>q :q<cr>
nmap <leader>z :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>e :wq<cr>

" basic moves
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
nnoremap <leader>2 :bnext<cr>
nnoremap <leader>1 :bprev<cr>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" functions
function! ToggleRelativeNumber()
" on/off relative numbers
	if &relativenumber == 1
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunction

nmap <F5> :call ToggleRelativeNumber()<cr>
imap <F5> <Esc>: call ToggleRelativeNumber()<cr>a

fun! TrimWhiteSpace()
" trim empty spaces when save a file
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN " author
        autocmd!
        autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
