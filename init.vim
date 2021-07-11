"----------------------------------------"
"----------- PLUGINS --------------------"
"----------------------------------------"

call plug#begin('~/.vim/plugged')

" For telescope "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

" File explorer
Plug 'kyazdani42/nvim-tree.lua'
Plug 'johann2357/nvim-smartbufs'

" "Comment
Plug 'gennaro-tedesco/nvim-commaround'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'mfussenegger/nvim-ts-hint-textobject'

" easymotion
Plug 'https://github.com/chaoren/vim-wordmotion.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'

" Undo tree 
Plug 'mbbill/undotree'

" LSP diagnosing
Plug 'folke/trouble.nvim'

" floating terminal
Plug 'voldikss/vim-floaterm'

" better movement
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'

" LSP "
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

" AUTO-COMPLETION "
Plug 'windwp/nvim-autopairs'

" keymaps-remembering helper
Plug 'folke/which-key.nvim'

" Tab control
Plug 'https://github.com/romgrk/barbar.nvim.git'

"-----------Web Development -------------"
Plug 'mattn/emmet-vim'
Plug 'gennaro-tedesco/nvim-jqx'
Plug 'p00f/nvim-ts-rainbow'
Plug 'https://github.com/windwp/nvim-ts-autotag.git'
Plug 'nikvdp/ejs-syntax'

" react
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" scrolling
Plug 'karb94/neoscroll.nvim'

"---------- CUSTOMIZATION ---------------"
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'edkolev/tmuxline.vim'

" dashboard
Plug 'glepnir/dashboard-nvim'
"
" colorscheme
Plug 'hoob3rt/lualine.nvim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'marko-cerovac/material.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'bkegley/gloombuddy'
Plug 'ray-x/aurora'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'yashguptaz/calvera-dark.nvim'

call plug#end()


"-------------------------------------------"
"----------- LOAD FILES --------------------"
"-------------------------------------------"

lua require('init')


source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/lsp-install.vim
source $HOME/.config/nvim/plugins/lsp-config.vim
source $HOME/.config/nvim/plugins/dashboard.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/autopairs.vim
source $HOME/.config/nvim/plugins/neoscroll.vim
source $HOME/.config/nvim/plugins/lsp-saga.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/trouble.vim

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/sets.vim


