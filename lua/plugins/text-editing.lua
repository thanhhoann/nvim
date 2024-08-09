return {
  -- wrap and unwrap functions
  {
    "Wansmer/treesj",
    keys = { "<leader>zz", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  -- Add/change/delete surrounding delimiter pairs with ease.
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },

  -- Auto insert next pair
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Search & Replace | Visual Selection
  { "chrisgrieser/nvim-rip-substitute", cmd = "RipSubstitute" },

  -- crs snake_case
  -- crm MixedCase
  -- crc camelCase
  -- cru UPPER_CASE
  -- cr- dash-case
  -- cr.dot.case
  { "tpope/vim-abolish" },
}
