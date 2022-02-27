" ricardoveronica init.vim
" Author and maintainer: Ricardo Veronica Duran <hola@ricardoveronica.com>
" https://github.com/RicardoVeronica/dotfiles/blob/master/init.vim

" LICENCE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" siut your needs and to make the changes yours. Attibution to this vimrc
" is not required although is thanked.
" Insperation:
" Makigas - https://github.com/danirod/vimrc
" ThePrimeagen - https://github.com/ThePrimeagen/.dotf...

" leader key
let mapleader = ","

call plug#begin('~/.config/nvim/plugged')
" programming
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-lsp/elixir-ls'
" Plug 'pangloss/vim-javascript'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', {'branch': 'main'}
Plug 'vim-scripts/loremipsum'
Plug 'gko/vim-coloresque'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" helpers
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" vim look
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'ap/vim-buftabline'
call plug#end()
