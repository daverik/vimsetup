set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Plugin 'vydark.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'functiontracker.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

colorscheme gotham

set number
set nowrap
set ignorecase
set smartcase

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" :au WinEnter * :setlocal number
" :au WinLeave * :setlocal nonumber

" Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =

" Nerdtree shortcut key
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" Remove scrollbar
set guioptions-=r 

" Split navigation
map <D-]> <C-w>l
map <D-[> <C-w>h

" remove nerdtree scrollbar
:set guioptions-=L

" configure jshint
let g:syntastic_javascript_checkers = ['jshint']

" default nedtree width
let g:NERDTreeWinSize=20

map <F2> : Flisttoggle <CR>

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
