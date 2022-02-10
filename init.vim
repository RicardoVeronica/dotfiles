syntax on                                 " color in syntax
set nocompatible                          " disable vi compatibility mode
set mouse=a                               " allow mouse selector
set clipboard=unnamed                     " clipboard functionality
set colorcolumn=79                        " colum limit
set number                                " show a line number
set relativenumber                        " relative numbers in line numbers
set noswapfile                            " no swap files
set nobackup                              " if you need backup use git
set cursorline                            " highlight in actual line
set cursorcolumn                          " highlight in actual colum
set showmatch                             " highlight parenteses and brackets
set smartcase                             " search in smartcase
set background=dark                       " background dark

set showmode                              " always show vim mode
set laststatus=2                          " always show status bar
set wildmenu                              " enable menu options with tab
set ruler                                 " enable ruler percent

set expandtab                             " space no tabs
set autoindent                            " auto indent always on
set shiftwidth=2                          " space in identation
set softtabstop=2                         " same identation when run back


let mapleader = ","

inoremap ii <esc>

nmap <leader>x :bd<cr>
nmap <leader>q :q<cr>
nmap <leader>z :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>e :wq<cr>

noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l


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


call plug#begin('~/.config/nvim/plugged')
Plug 'elixir-editors/vim-elixir'
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-lsp/elixir-ls'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
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
Plug 'styled-components/vim-styled-components', {'branch': 'main'}
call plug#end()


colorscheme gruvbox

nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=25
let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['^node_modules$']

set hidden
nnoremap <leader>2 :bnext<cr>
nnoremap <leader>1 :bprev<cr>

map <C-f> <Esc><Esc>:Files!<CR>
let $FZF_DEFAULT_OPTS='--reverse'

nmap <leader>gs :G<CR>

nmap <leader>f <Plug>(easymotion-s2)

let g:UltiSnipsExpandTrigger="<leader>a"

command! -nargs=0 Prettier :CocCommand prettier.formatFile

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
  \ 'coc-markdownlint',
  \ 'coc-vimlsp'
  \ ]
