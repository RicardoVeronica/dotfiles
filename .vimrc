
" My .vimrc configuration
" setcain - https://github.com/setcain/dotfiles/.vimrc

" ===============================================
"            Add basics configuration
" ===============================================
set nocompatible       " Disable vi compatibility mode
set mouse=a            " Allow mose selection
set colorcolumn=79     " Column limit
syntax on              " Color in syntax
set number             " Show a line number
set relativenumber     " Relative numbers in line numbers
set noswapfile         " No swap files
set nobackup           " If you need backup something use Git
set nowrap             " No wrap in long lines
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
set shiftwidth=4       " Space in identation
set softtabstop=4      " Same identation when run back
set expandtab          " Space no tabs
set autoindent         " Autoident always on

" 2 space indenting in web languages files
autocmd FileType html setlocal shiftwidth=4 softtabstop=4
autocmd FileType css setlocal shiftwidth=4 softtabstop=4
" autocmd FileType js setlocal shiftwidth=2 softtabstop=2
" autocmd FileType php setlocal shiftwidth=2 softtabstop=2
" autocmd FileType json setlocal shiftwidth=2 softtabstop=2

" syntax for django
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


""""""" Basic plugins
" Plugin 'terryma/vim-multiple-cursors'

Plugin 'scrooloose/nerdtree'             " File manager

Plugin 'ap/vim-buftabline'               " Transform buffers in tabs

Plugin 'ctrlpvim/ctrlp.vim'              " Helps to find files in a proyect


""""""" Basic programming plugins
Plugin 'tpope/vim-surround'              " Change brackets, parent, etc
" changeString this/forThis cs"'
" cs'<p>  - html tags
" cst"  - to return
" ds"  - to remove
" ysiw[  - to add brackets or somethig like that, with no space (with space])

Plugin 'jiangmiao/auto-pairs'            " Auto close brackets, parent, etc

Plugin 'majutsushi/tagbar'               " Navbar with functions, vars, etc

Plugin 'ervandew/supertab'               " Complete name functions and vars

Plugin 'tpope/vim-commentary'            " Simple commentary
" gcc for comment & uncomment a line, gc in visualmode, range -
" :1,12Commentary 

" Plugin 'vim-syntastic/syntastic'         " Syntax for many languages

Plugin 'Valloric/YouCompleteMe'          " Code completion

Plugin 'SirVer/ultisnips'                " YouCompleteMe dependency

Plugin 'honza/vim-snippets'              " YouCompleteMe snippets

Plugin 'nathanaelkane/vim-indent-guides' " Indent guides for html
" <Leader>ig


""""""" Git
Plugin 'airblade/vim-gitgutter'          " Git helps in files

" Plugin 'tpope/vim-fugitive'              " Git comands in vim


""""""" web languages
Plugin 'mattn/emmet-vim'                 " Emmet for vim 
" example: (just type in document.html) dev.s12.blue>ul>li*5 then <ctrl+y>,


""""""" Python
Plugin 'tweekmonster/impsort.vim'        " Sort imports

Plugin 'python-mode/python-mode'         " Toolbox
" shift + k = pydocs, ctr + space = autocomplete, <leader>r = run pycode

"Plugin 'davidhalter/jedi-vim'

"Plugin 'jmcantrell/vim-virtualenv'


""""""" Docker
"Plugin 'ekalinin/Dockerfile.vim'          " Syntax for Dockerfile


""""""" Themes
Plugin 'vim-airline/vim-airline'           " Better look in status bar

Plugin 'vim-airline/vim-airline-themes'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'altercation/vim-colors-solarized'

Plugin 'sickill/vim-monokai'

Plugin 'ryanoasis/vim-devicons'
" git clone https://github.com/ryanoasis/nerd-fonts.git
" ./install.sh

call vundle#end()            " required
filetype plugin indent on    " required



"================================================
"                    Maps
" ===============================================
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
let tagbar_width=25

" ctrlp
let g:ctrlp_map = '<Leader>p'

" jedi
"let g:jedi#rename_command=0
"let g:jedi#documentation_command=0

" pymode
let g:pymode_breakepoint=0
let g:pymode_folding=1
let g:pymode_rope=0

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_filetype_map = {"Dockerfile": "dockerfile"}

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

" Save root file :w!!
cmap w!! w !sudo dd of=%<Enter>



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
