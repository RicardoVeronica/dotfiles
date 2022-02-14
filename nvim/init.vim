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

" plugins
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
