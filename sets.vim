
set nocompatible
set noswapfile
set nobackup
set exrc
set relativenumber
set hidden
set noerrorbells
set expandtab
set noshowmode
set smartindent
filetype indent on
set shiftwidth=4
set autoindent
set cindent
set tabstop=10
set incsearch
set nowrap
set sidescroll=1
syntax on 
set encoding=UTF-8
set smartcase
set scrolloff=50
set colorcolumn=80
highlight EndOfBuffer ctermfg=black ctermbg=black
highlight Comment ctermfg=Blue
set background=dark
set termguicolors

if has('gui_running')
    set guifont=FiraCode\ Nerd\ Font\ Mono
endif


" Use formatprg when available
let g:neoformat_try_formatprg = 1

" For lsp completion
set completeopt=menuone,noselect



