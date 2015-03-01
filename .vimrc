"Basic settings for all humans
set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:vundle_default_git_proto = 'git'

"Bundles
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'

set rtp+=/Users/jon/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Solarized!
syntax enable
set background=light
colorscheme solarized

filetype plugin indent on

set mouse=a

" Whitespace
set tabstop=4
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent

" Spit and Polish 
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Searching
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
