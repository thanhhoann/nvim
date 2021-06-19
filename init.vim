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

" "Comment
Plug 'gennaro-tedesco/nvim-commaround'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'mfussenegger/nvim-ts-hint-textobject'

" easymotion
Plug 'https://github.com/easymotion/vim-easymotion.git'

" Undo tree
Plug 'mbbill/undotree'

" LSP diagnosing
Plug 'folke/trouble.nvim'

" floating terminal
Plug 'voldikss/vim-floaterm'

" better movement
Plug 'https://github.com/rhysd/clever-f.vim.git'

" LSP "
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"" AUTO-COMPLETION "
Plug 'jiangmiao/auto-pairs'
" Plug 'hrsh7th/nvim-compe'
" Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

" keymaps-remembering helper
Plug 'folke/which-key.nvim'

" Tab control
Plug 'https://github.com/romgrk/barbar.nvim.git'

"-----------keek Development -------------"
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'sbdchd/neoformat'

"---------- CUSTOMIZATION ---------------"
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'edkolev/tmuxline.vim'

" dashboard
Plug 'mhinz/vim-startify' 

" colorscheme
Plug 'hoob3rt/lualine.nvim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'marko-cerovac/material.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'

call plug#end()


"-------------------------------------------"
"----------- LOAD FILES --------------------"
"-------------------------------------------"

lua require('init')

source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/nvim-tree.vim
source $HOME/.config/nvim/plugins/lsp-install.vim
source $HOME/.config/nvim/plugins/lsp-config.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/trouble.vim

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/sets.vim

 
