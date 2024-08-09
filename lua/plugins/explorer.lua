return {
  -- Yazi + Neovim
  -- {
  --   "mikavilpas/yazi.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   event = "VeryLazy",
  --   keys = {
  --     -- 👇 in this section, choose your own keymappings!
  --     {
  --       "-",
  --       function()
  --         require("yazi").yazi()
  --       end,
  --       desc = "Open the file manager",
  --     },
  --     {
  --       -- Open in the current working directory
  --       "<leader>-",
  --       function()
  --         require("yazi").yazi(nil, vim.fn.getcwd())
  --       end,
  --       desc = "Open the file manager in nvim's working directory",
  --     },
  --   },
  --   ---@type YaziConfig
  --   opts = {
  --     open_for_directories = true,
  --     -- the floating window scaling factor. 1 means 100%, 0.9 means 90%, etc.
  --     floating_window_scaling_factor = 1,
  --     -- the transparency of the yazi floating window (0-100). See :h winblend
  --     yazi_floating_window_winblend = 0,
  --   },
  -- },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
