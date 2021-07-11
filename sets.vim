
set nocompatible

set noswapfile
set nobackup

set formatoptions-=cro

set nu
set hidden

set noerrorbells

set smartindent
set smarttab
set expandtab "converts to spaces"
set shiftwidth=4 "4 spaces"
set autoindent "new lines inherit the indentation of previous lines"
set tabstop=7

set showcmd
set noshowmode
set autowrite
set autoread

filetype indent on
set cindent
set noruler

set ignorecase "igore case when searching"
set colorcolumn=80

set incsearch
set nohlsearch
set nowrap
set nofoldenable
set nomodeline

syntax on 
set encoding=UTF-8
set smartcase
set scrolloff=50

" set cursorline  color in visual mode
set cursorline

let g:dashboard_default_executive ='telescope'

" Use formatprg when available
let g:neoformat_try_formatprg = 1

" For lsp completion
set completeopt=menuone,noselect

" for background
highlight EndOfBuffer ctermfg=black ctermbg=black
highlight Comment ctermfg=Blue
set background=light
set termguicolors

if has('gui_running')
    set guifont=FiraCode\ Nerd\ Font\ Mono
endif

autocmd FileType lua setlocal commentstring=#\ %s



