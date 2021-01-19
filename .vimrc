" My .vimrc configuration
" setcain - https://github.com/setcain/dotfiles/.vimrc

" ===============================================
"            Add basics configuration
" ===============================================
set mouse=a            " Allow mouse selection
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
set clipboard=unnamed  " Copy in VIM stay in your OS clipboard
set showcmd

" To avoid slow scroll issues
set ttyfast
set ttyscroll=3
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
" syntax for svelte files
au BufNewFile,BufRead *.svelte set ft=html


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


""""" Basics Vim functionality plugins

Plugin 'scrooloose/nerdtree'             " File manager

" Plugin 'ctrlpvim/ctrlp.vim'              " Helps to find files in a proyect

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plugin 'junegunn/fzf.vim'

Plugin 'vim-airline/vim-airline'         " Better look in status bar

Plugin 'vim-airline/vim-airline-themes'  " Airline themes

Plugin 'ap/vim-buftabline'               " Transform buffers in tabs


""""""" Basic write plugins

Plugin 'easymotion/vim-easymotion'       " Easy movements
" <leader> + f

Plugin 'tpope/vim-surround'              " Change brackets, parent, etc
" change surround this/forThis cs"'
" cs'<p> - change surround tag
" cst" - change surround turn
" ds" - delete surround
" ysiw[ - to add brackets (with space]) (whit no space[) copy surround in word

Plugin 'tpope/vim-commentary'            " Simple commentary
" gcc for comment & uncomment a line
" gc in visualmode
" :1,12Commentary - for range

Plugin 'jiangmiao/auto-pairs'            " Auto close brackets, parent, etc

Plugin 'majutsushi/tagbar'               " Sidebar with functions, vars, etc
" F8

Plugin 'ervandew/supertab'               " Complete name functions and vars

Plugin 'Valloric/YouCompleteMe'          " Code completion

" Plugin 'neoclide/coc.vim', { 'do': './install.sh' }

Plugin 'SirVer/ultisnips'                " snippets

Plugin 'honza/vim-snippets'              " ultisnips depend

Plugin 'vim-scripts/loremipsum'          " auto lorem

" Plugin 'vim-syntastic/syntastic'

""""""" Git

Plugin 'airblade/vim-gitgutter'          " Git helps in files

Plugin 'tpope/vim-fugitive'              " git comands in vim
" ,gs git status
" s for stage or u for unstage
" :Gcommit for commit changes
" :Gpush push changes


""""""" html

Plugin 'mattn/emmet-vim'                 " emmet for vim 
" example: (just type in document.html)
" dev.s12.blue>ul>li*5
" then <ctrl+y>,


""""""" css

Plugin 'gko/vim-coloresque'              " color preview


""""" python

Plugin 'python-mode/python-mode'         " toolbox
" shift + k = pydocs
" ctr + space = autocomplete
" <leader>r = run pycode

Plugin 'tweekmonster/impsort.vim'        " sort imports
" <leader> .


"""""" Javascript

" Plugin 'pangloss/vim-javascript' 

" Plugin 'MaxMEllon/vim-jsx-pretty'

" Plugin 'eslint/eslint'


"""" Themes

Plugin 'chriskempson/vim-tomorrow-theme' " nice theme for vim


"""" Icons

Plugin 'ryanoasis/vim-devicons'          " icons in vim
" git clone
" https://github.com/ryanoasis/nerd-fonts.git
" ./install.sh

call vundle#end()          " required
filetype plugin indent on  " required


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
" let g:NERDTreeIgnore = ['^node_modules$']

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

" pymode
let g:pymode_breakepoint=0
let g:pymode_folding=0
let g:pymode_rope=0
let g:pymode_lint_write=0
let mapleader = ","
nnoremap <leader>p :Pylint<CR>

" ycm options
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_list_select_completion=["<tab>"]
let g:ycm_use_ultisnips_completer=1

" ultisnips
let g:UltiSnipsListSnippets="<c-k>"
let g:UltiSnipsExpandTrigger="<leader>a"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" git fugitive
nmap <leader>gs :G<CR>

" easymotion
nmap <leader>f <Plug>(easymotion-s2)


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
