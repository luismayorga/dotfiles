""""""""""""""" GENERAL
"
set nocompatible

"Detect the kind of file
filetype plugin indent on

"Enable syntax
syntax on

set encoding=utf8


""""""""""""""" LOOK
"
"Show current position
set ruler

"Show line numbers
set number

set background=dark

"Show editing mode
set showmode

"Show command being triggered
set showcmd
set title

"Show status line
set laststatus=2


""""""""""""""" SEARCH
"
"Ignore case when searching
set ignorecase
set smartcase

"Highlight results
set hlsearch

"Incremental search
set incsearch


""""""""""""""" BACKUPS
"
set nobackup
set nowb
set noswapfile


""""""""""""""" INDENTING
"
" One tab is 4 spaces
set tabstop=4
set shiftwidth=4

set cindent
" Spaces instead of tabs
set expandtab


""""""""""""""" LATEX SUITE
"
let g:tex_flavor='latex'
