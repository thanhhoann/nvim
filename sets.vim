
" Set the completefunc you can do this per file basis or with a mapping
set completefunc=tailwind#complete

" The mapping I use
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>

" Add this autocmd to your vimrc to close the preview window after the completion is done
autocmd CompleteDone * pclose

autocmd FileType markdown let b:coc_suggest_disable = 1
 
set nocompatible

au BufNewFile,BufRead *.ejs set filetype=html
autocmd FileType html,css,jsx,ejs EmmetInstall

autocmd FileType scss setl iskeyword+=@-@
set mouse=a

set noswapfile
set nobackup

set formatoptions-=cro

set nu
set hidden

" set cursorline

set noerrorbells

set smartindent
set smarttab
set expandtab "converts to spaces"
set shiftwidth=5 "4 spaces"
set autoindent "new lines inherit the indentation of previous lines"
set tabstop=5

set noshowmode
set autowrite
set autoread

filetype indent on
filetype plugin on

set cindent
set noruler

set showcmd
set ignorecase "igore case when searching"

set incsearch
set nohlsearch
set nowrap
set nofoldenable
" set nomodeline

syntax on 
set encoding=UTF-8
set smartcase
set scrolloff=100

" Telescope customs"
highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item
highlight TelescopeSelectionCaret guifg=#D79921          " Selection caret
highlight TelescopeMultiSelection guifg=#928374          " Multisections
highlight TelescopeNormal         guibg=#00000           " Floating windows created by telescope

" Border highlight groups
highlight TelescopeBorder         guifg=#D79921
highlight TelescopePromptBorder   guifg=#D79921
highlight TelescopeResultsBorder  guifg=#D79921
highlight TelescopePreviewBorder  guifg=#D79921

" Highlight characters your input matches
highlight TelescopeMatching       guifg=yellow

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=white

" set cursorline  color in visual mode
highlight Cursor guifg=white guibg=white
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

let g:dashboard_default_executive ='telescope'

" For lsp completion
set completeopt=menuone,noselect

" for background
highlight EndOfBuffer ctermfg=black ctermbg=black
highlight Comment ctermfg=Green
set termguicolors

autocmd FileType lua setlocal commentstring=#\ %s


