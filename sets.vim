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
set termguicolors
set scrolloff=30
highlight EndOfBuffer ctermfg=black ctermbg=black

" for treesitter dap_virtual_text 
let g:dap_virtual_text = v:true

" for lsp completion
set completeopt=menuone,noselect,noinsert
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
