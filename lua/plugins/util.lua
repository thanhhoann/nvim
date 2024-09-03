return {
  -- Add support for color highlighting
  {
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("plugins.config.highlight-colors")
    end,
  },

  -- Obsidian + Neovim
  -- {
  --   "epwalsh/obsidian.nvim",
  --   ft = "markdown", -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  --   version = "*", -- recommended, use latest release instead of latest commit
  --   lazy = true,
  -- },

  -- Scrolling in Neovim with ease
  { "karb94/neoscroll.nvim", event = "VeryLazy", opts = {} },

  -- Telescope + Nerd Font Icons, Symbols & Emojis
  {
    "ziontee113/icon-picker.nvim",
    event = "VeryLazy",
    config = function()
      require("icon-picker").setup({ disable_legacy_commands = true })

      local opts = { noremap = true, silent = true }

      vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
      vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
    end,
  },

  {
    "kawre/leetcode.nvim",
    event = "VeryLazy",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "cpp",
    },
  },

  -- {
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --   opts = { showmode = false },
  -- },
}
