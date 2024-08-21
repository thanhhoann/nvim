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

  -- Telescope + Nerd Font Icons, Symbols & Emojis
  {
    "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker").setup({ disable_legacy_commands = true })

      local opts = { noremap = true, silent = true }

      vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
      vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
      vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
    end,
  },

  -- View undo history
  { "mbbill/undotree", lazy = true, cmd = "UndotreeToggle" },

  -- Multiple cursors
  -- {
  --   "brenton-leighton/multiple-cursors.nvim",
  --   version = "*", -- Use the latest tagged version
  --   opts = {
  --     pre_hook = function()
  --       vim.g.minipairs_disable = true
  --       require("cmp").setup({ enabled = false })
  --     end,
  --     post_hook = function()
  --       vim.g.minipairs_disable = false
  --       require("cmp").setup({ enabled = true })
  --     end,
  --     custom_key_maps = {
  --       {
  --         "n",
  --         "<Leader>|",
  --         function()
  --           require("multiple-cursors").align()
  --         end,
  --       },
  --     },
  --   },
  --   keys = {
  --     { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" }, desc = "Add cursor and move down" },
  --     { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "x" }, desc = "Add cursor and move up" },
  --     { "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
  --     { "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move down" },
  --     { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" }, desc = "Add or remove cursor" },
  --     {
  --       "<Leader>A",
  --       "<Cmd>MultipleCursorsAddMatchesV<CR>",
  --       mode = { "n", "x" },
  --       desc = "Add cursors to cword in previous area",
  --     },
  --     -- {
  --     --   "<Leader>d",
  --     --   "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
  --     --   mode = { "n", "x" },
  --     --   desc = "Add cursor and jump to next cword",
  --     -- },
  --     -- { "<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Jump to next cword" },
  --     -- { "<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" }, desc = "Add cursors to cword" },
  --     -- { "<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = { "n", "x" }, desc = "Lock virtual cursors" },
  --   },
  --   config = function()
  --     vim.api.nvim_set_hl(0, "MultipleCursorsCursor", { bg = "#FFFFFF", fg = "#000000" })
  --     vim.api.nvim_set_hl(0, "MultipleCursorsVisual", { bg = "#CCCCCC", fg = "#000000" })
  --
  --     require("multiple-cursors").setup(opts)
  --   end,
  -- },
}
