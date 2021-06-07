
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
set incsearch
set guifont=
set nowrap
set encoding=UTF-8
set smartcase
set scrolloff=30
highlight EndOfBuffer ctermfg=black ctermbg=black
highlight Comment ctermfg=Blue


" For lsp completion
set completeopt=menuone,noselect,noinsert
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" For deoplete - Dark powered asynchronous completion framework for
" neovim/Vim8, I guess
let g:deoplete#enable_at_startup = 1

set background=dark
set termguicolors

