return {
  -- wrap and unwrap functions
  {
    "Wansmer/treesj",
    event = "VeryLazy",
    keys = { "<leader>zz", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  -- Add/change/delete surrounding delimiter pairs with ease.
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    opts = {},
  },

  -- Auto insert next pair
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    config = true,
  },

  -- Search & Replace | Visual Selection
  {
    "chrisgrieser/nvim-rip-substitute",
    cmd = "RipSubstitute",
    event = "VeryLazy",
    config = function()
      require("plugins.config.rip-substitute")
    end,
  },

  -- crs snake_case
  -- crm MixedCase
  -- crc camelCase
  -- cru UPPER_CASE
  -- cr- dash-case
  -- cr.dot.case
  { "tpope/vim-abolish", event = "VeryLazy" },

  -- { "LudoPinelli/comment-box.nvim" },
}
