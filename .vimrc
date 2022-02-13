" ricardoveronica init.vim
" Author and maintainer: Ricardo Veronica Duran <hola@ricardoveronica.com>
" https://github.com/RicardoVeronica/dotfiles/blob/master/.vimrc

" LICENCE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" siut your needs and to make the changes yours. Attibution to this vimrc
" is not required although is thanked.
" Insperation:
" Makigas - https://github.com/danirod/vimrc
" ThePrimeagen - https://github.com/ThePrimeagen/.dotf...

" General settings
filetype plugin on               " Enable filetype search
syntax enable                    " Color in syntax
set nowrap                       " No wrap in files
set smartcase                    " Case sentitive searching
set mouse=a                      " Allow mouse selection
set colorcolumn=80               " Column limit
set clipboard=unnamed            " Copy in VIM stay in your OS clipboard
set number                       " Show a line number
set relativenumber               " Relative numbers in line numbers
set nocompatible                 " Disable vi compatibility mode
set noswapfile                   " No swap files
set nobackup                     " If you need backup something use Git
set cursorline                   " Highlight in line
set cursorcolumn                 " Highlight in column 
set showmatch                    " Highlight parentheses and brackets
set ttyfast                      " Vim Faster
set lazyredraw                   " The screen not redraw
set nu                           " Numbers and lines for better style
set incsearch                    " Mark while searching words
packloadall                      " Vim 8 plugins
set undofile                     " U and ctrl + R always present
set undodir=~/.vim/undodir

" menubar
set laststatus=2                 " Always show status bar
set showmode                     " Always show mode
set wildmenu                     " Enable menu options whit tab
set ruler                        " Enable ruler percent

" indentation
set backspace=indent,eol,start   " Backspace always work on insert mode
set encoding=utf-8               " Always use unicode
set smartindent                  " Indent the better vim can
set shiftwidth=2                 " Space in identation
set softtabstop=2                " Same identation when run back
set expandtab                    " Space no tabs
set autoindent                   " Autoident always on
autocmd FileType py setlocal shiftwidth=4 softtabstop=4
" autocmd FileType html setlocal shiftwidth=2 softtabstop=2
" autocmd FileType js setlocal shiftwidth=2 softtabstop=2
" autocmd FileType css setlocal shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.html set filetype=htmldjango

" leader and maps
let mapleader=","
inoremap ii <esc>
nmap <leader>x :bd<cr>
nmap <leader>q :q<cr>
nmap <leader>z :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>e :wq<cr>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

cmap w!! w !sudo dd of=%<enter>

set hidden
nnoremap <leader>2 :bnext<cr> 
nnoremap <leader>1 :bprev<cr> 

map <F2> :!php -l %<CR>

nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeWinSize=25
 let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore = ['^node_modules$']

"nmap <leader>. :ImpSort<cr>

"nmap <f8> :TagbarToggle<cr>
"let tagbar_width=28

"map <C-f> <Esc><Esc>:Files!<CR>
"let $FZF_DEFAULT_OPTS='--reverse'

"nmap <leader>gs :G<CR>

"nmap <leader>f <Plug>(easymotion-s2)

"let g:UltiSnipsExpandTrigger="<leader>a"

"let g:coc_global_extensions = [
  "\ 'coc-snippets',
  "\ 'coc-tsserver',
  "\ 'coc-eslint',
  "\ 'coc-prettier',
  "\ 'coc-json',
  "\ 'coc-html',
  "\ 'coc-css',
  "\ 'coc-python',
  "\ 'coc-docker',
  "\ 'coc-markdownlint'
  "\ ]

"command! -nargs=0 Prettier :CocCommand prettier.formatFile

"if &t_Co >= 256 || has("gui-running")
    "color Tomorrow-Night
"endif

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
