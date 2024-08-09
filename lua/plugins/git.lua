return {
  -- Dealing with conflicts !
  -- { "akinsho/git-conflict.nvim", version = "*", config = true },
  -- https://github.com/echasnovski/mini.diff

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
  },
}
