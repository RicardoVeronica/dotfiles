" My .vimrc configuration
" setcain - https://github.com/setcain/dotfiles/.vimrc

" ===============================================
"            Add basics configuration
" ===============================================
" set mouse=a            " Allow mose selection
" set nowrap             " No wrap in long lines
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
" autocmd FileType py setlocal shiftwidth=4 softtabstop=4

" syntax for django templates
au BufNewFile,BufRead *.html set filetype=htmldjango


" ===============================================
"               Vundle start
" ===============================================

" If Vundle is not installed
if empty(glob("~/.vim/bundle"))
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    autocmd vimEnter * PluginInstall
end

" Vundle begin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


""""""" Basic Vim plugins

" No use yet
" Plugin 'terryma/vim-multiple-cursors'    " Multicursors for vim
" Plugin 'w0rp/ale'                        " Lint for many languages
" Plugin 'vim-syntastic/syntastic'         " Syntax checker for many languages
" Plugin 'tpope/vim-fugitive'              " Git comands in vim
" Plugin 'davidhalter/jedi-vim'            " Help for python
" Plugin 'jmcantrell/vim-virtualenv'       " Virtual envs in vim
" Plugin 'ekalinin/Dockerfile.vim'         " Syntax for Dockerfile
" Plugin 'nathanaelkane/vim-indent-guides' " Indent guides for html
" <Leader>ig 

Plugin 'scrooloose/nerdtree'             " File manager

Plugin 'ctrlpvim/ctrlp.vim'              " Helps to find files in a proyect

Plugin 'vim-airline/vim-airline'         " Better look in status bar

Plugin 'vim-airline/vim-airline-themes'  " Airline themes

Plugin 'ap/vim-buftabline'               " Transform buffers in tabs


""""""" Basic write plugins

Plugin 'tpope/vim-surround'              " Change brackets, parent, etc
" changeString this/forThis cs"'
" cs'<p>  - html tags
" cst"  - to return
" ds"  - to remove
" ysiw[  - to add brackets (with space]) (whit no space[)

Plugin 'tpope/vim-commentary'            " Simple commentary
" gcc for comment & uncomment a line
" gc in visualmode
" :1,12Commentary - for range

Plugin 'jiangmiao/auto-pairs'            " Auto close brackets, parent, etc

Plugin 'majutsushi/tagbar'               " Sidebar with functions, vars, etc

Plugin 'ervandew/supertab'               " Complete name functions and vars

Plugin 'Valloric/YouCompleteMe'          " Code completion

Plugin 'SirVer/ultisnips'                " snippets

Plugin 'honza/vim-snippets'              " ultisnips depend


""""""" Git

Plugin 'airblade/vim-gitgutter'          " Git helps in files


""""""" HTML

Plugin 'mattn/emmet-vim'                 " Emmet for vim 
" example: (just type in document.html)
" dev.s12.blue>ul>li*5
" then <ctrl+y>,

Plugin 'vim-scripts/loremipsum'          " Lorem generator


""""""" CSS

Plugin 'gko/vim-coloresque'              " Color preview


"""""" JavaScript

Plugin 'pangloss/vim-javascript'         " JavaScript sintax and identation

Plugin 'mxw/vim-jsx'                     " JSX sintax and identation


"""""" Python

Plugin 'python-mode/python-mode'         " Toolbox
" shift + k = pydocs
" ctr + space = autocomplete
" <leader>r = run pycode

Plugin 'tweekmonster/impsort.vim'        " Sort imports


""""""" Themes

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'ryanoasis/vim-devicons'          " Icons in vim
" git clone
" https://github.com/ryanoasis/nerd-fonts.git
" ./install.sh

call vundle#end()          " required
filetype plugin indent on  " required


" ===============================================
"                    Maps
" ===============================================

" Leader key
let mapleader=","

" Change Esc key 
inoremap ii <Esc>

" Some easy moves
nmap <Leader>x :bd<cr>
nmap <Leader>q :q<cr>
nmap <Leader>z :q!<cr>
nmap <Leader>w :w<cr>
nmap <Leader>e :wq<cr>

" Sorry but don't have arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"================================================
"           Maps plugins & options
"================================================

" Save root file :w!!
cmap w!! w !sudo dd of=%<Enter>

" NERDTree
nmap <Leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=25

" ImpSort
nmap <Leader>. :ImpSort<cr>

" Buftabline
set hidden
nnoremap <Leader>2 :bnext<cr> 
nnoremap <Leader>1 :bprev<cr> 

" Tagbar
nmap <F8> :TagbarToggle<cr>
let tagbar_width=28

" ctrlp
let g:ctrlp_map = '<Leader>p'

" pymode
let g:pymode_breakepoint=0
let g:pymode_folding=0
let g:pymode_rope=0
let g:pymode_lint=1

" YCM Options
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_list_select_completion=["<tab>"]
let g:ycm_use_ultisnips_completer=1

" Ultisnips
let g:UltiSnipsListSnippets="<c-k>"
let g:UltiSnipsExpandTrigger="<Leader>a"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTriggeir="<s-tab>"


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

function! ToggleRelativeNumber()
    if &relativenumber == 1
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction
