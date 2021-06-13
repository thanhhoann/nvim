
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
set guifont=
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

" to run prettier format on every js files on save
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
" Use formatprg when available
let g:neoformat_try_formatprg = 1

" For lsp completion
set completeopt=menuone,noselect

" emmet
let g:user_emmet_leader_key='<C-i>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" For tmux navigator
let g:tmux_navigator_save_on_switch = 2

" vim wiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" asynctas
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'external'


