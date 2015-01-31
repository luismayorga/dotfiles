""""""""""""""" GENERAL
"
set nocompatible

"Detect the kind of file
filetype plugin indent on

"Enable syntax
syntax on

set encoding=utf8

let mapleader=","

""""""""""""""" LOOK
"
"Show current position
set ruler

"Show line numbers
set number

if has("gui_running")
    set background=dark
    set guifont=Monaco:h13
    "set transparency=5
else
    set background=light
endif

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
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*; latexmk -c'
set iskeyword+=:

"rainbow parentheses
let g:rbpt_max = 16
"Install plugins
execute pathogen#infect()

