return {
  -- Dealing with conflicts !
  {
    "akinsho/git-conflict.nvim",
    event = "VeryLazy",
    version = "*",
    config = true,
  },

  -- https://github.com/echasnovski/mini.diff

  {
    "NeogitOrg/neogit",
    config = function()
      require("plugins.config.neogit")
    end,
    -- event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
  },
}
