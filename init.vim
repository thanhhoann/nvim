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
set completeopt=menuone,noselect
highlight EndOfBuffer ctermfg=black ctermbg=black

"----------- PLUGINS --------------------"
call plug#begin('~/.vim/plugged')

" For telescope "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" CUSTOMIZATION "
Plug 'shaunsingh/moonlight.nvim'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'

" LSP "
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" AUTO-COMPLETION "
Plug 'hrsh7th/nvim-compe'
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'


call plug#end()




"---------------------- LOAD FILES -------------------"
lua require('init')
source $HOME/.config/nvim/lsp-install.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/compe.vim

"----------- NON-PLUGIN SHITS ----------------"
" For themes "
colorscheme moonlight
let g:tmuxline_theme = 'zenburn'



" For keymaps "
nnoremap <Leader>pp :lua require'telescope.builtin'.file_browser{}
nnoremap <Leader>.. :lua require'telescope.builtin'.oldfiles{}


" For nvim-tree "
highlight NvimTreeFolderIcon guibg=blue
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ]
let g:nvim_tree_width = 25
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
