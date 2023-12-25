local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local COLOR_SCHEMES = {
    { "folke/tokyonight.nvim" },
    { "tiagovla/tokyodark.nvim" }
}

local LSP = {
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },

    { 'ThePrimeagen/harpoon' },

    { 'tpope/vim-fugitive' },

    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'epwalsh/obsidian.nvim' },
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    { "rafamadriz/friendly-snippets" }
}

local UTILS = {
    { 'nvim-tree/nvim-web-devicons' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    { "cpea2506/relative-toggle.nvim" },
    { "honza/vim-snippets" },
    { "MunifTanjim/nui.nvim" },
    { "karb94/neoscroll.nvim" }
}

local EDITING_SUPPORT = {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    { 'windwp/nvim-ts-autotag' },
    {
        "gbprod/yanky.nvim",
        opts = {}
    },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'MunifTanjim/prettier.nvim' },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    }

}

local TMUX = {
    {
        'christoomey/vim-tmux-navigator',
        lazy = false
    }
}

local EDUCATION = {
    {
        'ThePrimeagen/vim-be-good'
    },

}

local ENTERTAIN = {
    { 'eandrju/cellular-automaton.nvim' },
    { 'echasnovski/mini.nvim',          version = '*' },
}

local STATUS_LINE = {
    {
        'nvim-lualine/lualine.nvim'
    }
}

local SUGGESTION = {
    {
        "m4xshen/hardtime.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {}
    },
}

local NOTE_TAKING = {
    { 'renerocksai/telekasten.nvim' },
    { 'renerocksai/calendar-vim' },                  -- viewing calendar
    { 'nvim-lua/popup.nvim' },
    { 'nvim-telescope/telescope-media-files.nvim' }, -- viewing media files
    { 'cnshsliu/smp.nvim' },
}


require("lazy").setup({
    COLOR_SCHEMES,
    LSP,
    UTILS,
    EDITING_SUPPORT,
    TMUX,
    STATUS_LINE,
    EDUCATION,
    ENTERTAIN,
    NOTE_TAKING
})
