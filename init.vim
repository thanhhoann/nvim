"----------------------------------------"
"----------- PLUGINS --------------------"
"----------------------------------------"

call plug#begin('~/.vim/plugged')

" For telescope "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" File explorer
Plug 'kyazdani42/nvim-tree.lua'

" Comment
Plug 'gennaro-tedesco/nvim-commaround'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" Undo tree
Plug 'mbbill/undotree'

" LSP diagnosing
Plug 'folke/trouble.nvim'

" LSP "
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" one-and-only-Git-plugin
Plug 'tpope/vim-fugitive'

" wiki 
Plug 'vimwiki/vimwiki'
"" AUTO-COMPLETION "
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/nvim-compe'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

" keymaps-remembering helper
Plug 'folke/which-key.nvim'

" Tab control
Plug 'https://github.com/romgrk/barbar.nvim.git'

"----------- Web Development -------------"
Plug 'mattn/emmet-vim'
Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'https://github.com/rafamadriz/friendly-snippets.git'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"---------- CUSTOMIZATION ---------------"
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'edkolev/tmuxline.vim'

" dashboard
Plug 'mhinz/vim-startify' 

" colorscheme
Plug 'DilanGMB/nebulous.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()


"-------------------------------------------"
"----------- LOAD FILES --------------------"
"-------------------------------------------"

lua require('init')

source $HOME/.config/nvim/plugins/compe.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/lsp-install.vim
source $HOME/.config/nvim/plugins/lsp-config.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/startify.vim

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/sets.vim

 
