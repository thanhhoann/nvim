
set nocompatible

set noswapfile
set nobackup

set relativenumber
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
set confirm

syntax on 
set encoding=UTF-8
set smartcase
set scrolloff=50

" set cursorline  color in visual mode
set cursorline
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END
if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


" Use formatprg when available
let g:neoformat_try_formatprg = 1

" For lsp completion
set completeopt=menuone,noselect

" for background
highlight EndOfBuffer ctermfg=black ctermbg=black
highlight Comment ctermfg=Blue
set background=dark
set termguicolors

if has('gui_running')
    set guifont=FiraCode\ Nerd\ Font\ Mono
endif



