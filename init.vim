"----------------------------------------"
"----------- PLUGINS --------------------"
"----------------------------------------"


call plug#begin('~/.vim/plugged')

"Status line
Plug 'tjdevries/express_line.nvim'

" Startup screen
Plug 'mhinz/vim-startify'


" Format"
Plug 'sbdchd/neoformat'

" Note-taking
Plug 'jbyuki/nabla.nvim' " Scientific mathematics rendering
Plug 'vimwiki/vimwiki'
Plug 'Pocco81/HighStr.nvim' "color text"

" Colorschemes 
Plug 'bkegley/gloombuddy'
Plug 'tjdevries/colorbuddy.nvim' " goes with gloombuddy.nvim
Plug 'winston0410/commented.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'itchyny/lightline.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'ray-x/aurora'

" TypeScript
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Todo-comment"
Plug 'folke/todo-comments.nvim'

" Tmux line
" Plug 'edkolev/tmuxline.vim'

" Telescope 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" word motions 
Plug 'phaazon/hop.nvim'
Plug 'chaoren/vim-wordmotion'
Plug 'ggandor/lightspeed.nvim'

"  file manager 
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

"  diagnosing
" Plug 'folke/trouble.nvim'

" floating terminal
Plug 'voldikss/vim-floaterm'

" transparent background"
Plug 'xiyaowong/nvim-transparent'
let g:transparent_enabled = v:true

" scrolling "
Plug 'karb94/neoscroll.nvim'

" LSP 
" Plug 'neovim/nvim-lspconfig'
" Plug 'kabouzeid/nvim-lspinstall'
" Plug 'nvim-lua/lsp-status.nvim'

" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'

" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" auto-brackets
" Plug 'steelsojka/pears.nvim'
" Plug 'windwp/nvim-autopairs'

" Web Development in general
" Plug 'mattn/emmet-vim'
" Plug 'gennaro-tedesco/nvim-jqx' " .json format
" Plug 'p00f/nvim-ts-rainbow'
" Plug 'https://github.com/windwp/nvim-ts-autotag.git'

" ReactJS
" Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'mrdotb/vim-tailwindcss'

" indent guide
" Plug 'lukas-reineke/indent-blankline.nvim'

" icons 
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'

Plug 'gko/vim-coloresque'
" Plug 'tamton-aquib/staline.nvim'

" old colorscheme
Plug 'bluz71/vim-moonfly-colors'
" Plug 'folke/tokyonight.nvim'
" Plug 'chrisbra/Colorizer'
" Plug 'thanhhoann/vim-nightfly-guicolors'
" Plug 'yashguptaz/calvera-dark.nvim'

call plug#end()





"-------------------------------------------"
"----------- LOAD FILES --------------------"
"-------------------------------------------"


" source $HOME/.config/nvim/plugins/lsp-install.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/express_line.vim
" source $HOME/.config/nvim/plugins/autopairs.vim
" source $HOME/.config/nvim/plugins/lualine.vim
" source $HOME/.config/nvim/plugins/nvim-cmp.vim
" source $HOME/.config/nvim/plugins/lsp-config.vim
source $HOME/.config/nvim/plugins/dashboard.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/neoscroll.vim
source $HOME/.config/nvim/plugins/todo-comments.vim
" source $HOME/.config/nvim/plugins/trouble.vim

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/plugin-keymaps.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/sets.vim

" let g:vimwiki_list = [{'path': '~/vimwiki/',
                      " \ 'syntax': 'markdown', 'ext': '.md'}]

"require('staline').setup{}
 
lua << EOF
 require('init')
 require('commented').setup()
 require("todo-comments").setup {}
 require('el').setup {}
EOF



