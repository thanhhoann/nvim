"----------------------------------------"
"----------- PLUGINS --------------------"
"----------------------------------------"

call plug#begin('~/.vim/plugged')

" For telescope "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Comment
Plug 'gennaro-tedesco/nvim-commaround'

" CUSTOMIZATION "
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

" LSP "
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Git 
Plug 'tpope/vim-fugitive'

" AUTO-COMPLETION "
Plug 'hrsh7th/nvim-compe'
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Quickfix 
Plug 'kevinhwang91/nvim-bqf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'mhinz/vim-grepper'

call plug#end()


"-------------------------------------------"
"----------- LOAD FILES --------------------"
"
"-------------------------------------------"
lua require('init')
lua require('colorbuddy').colorscheme('gruvbuddy')

source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/compe.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/lsp-install.vim
source $HOME/.config/nvim/plugins/startify.vim

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/sets.vim


