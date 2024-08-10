return {
  -- Add support for color highlighting
  { "brenoprata10/nvim-highlight-colors", lazy = true },

  -- Obsidian + Neovim
  {
    "epwalsh/obsidian.nvim",
    ft = "markdown", -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
  },

  -- Scrolling in Neovim with ease
  { "karb94/neoscroll.nvim", opts = {} },

  -- Telescope + Nerd Icons
  { "2kabhishek/nerdy.nvim", otps = {} },

  -- View undo history
  { "mbbill/undotree", lazy = true, cmd = "UndotreeToggle" },

  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup({
        input_buffer_type = "dressing",
      })
    end,
  },

  -- Multiple cursors
  -- { "mg979/vim-visual-multi" },
}
