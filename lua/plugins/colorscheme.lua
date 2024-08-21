return {
  -- {
  --   "vague2k/huez.nvim",
  --   -- if you want registry related features, uncomment this
  --   import = "huez-manager.import",
  --   branch = "stable",
  --   event = "UIEnter",
  --   config = function()
  --     require("huez").setup({})
  --   end,
  -- },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "navarasu/onedark.nvim", name = "onedark", priority = 1000 },
  { "scottmckendry/cyberdream.nvim", name = "cyberdream", priority = 1000 },

  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("night-owl").setup()
      vim.cmd.colorscheme("night-owl")
    end,
  },

  { "folke/tokyonight.nvim", lazy = true },

  { "tiagovla/tokyodark.nvim", lazy = true },

  {
    "2giosangmitom/nightfall.nvim",
    lazy = true,
    config = function()
      require("nightfall").setup({
        compile_path = vim.fn.stdpath("cache") .. "/nightfall",
        transparent = false,
        terminal_colors = true,
        dim_inactive = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = true, bold = true },
          types = { italic = true },
          conditionals = { italic = true },
          functions = { bold = true },
          variables = {},
          numbers = {},
          constants = {},
          operators = {},
          strings = {},
          booleans = {},
          loops = {},
        },
        default_integrations = true,
        integrations = {
          lazy = { enabled = true },
          telescope = { enabled = true, style = "borderless" },
          illuminate = { enabled = true },
          treesitter = { enabled = true, context = true },
          lspconfig = { enabled = true },
          flash = { enabled = true },
        },
      })
    end,
  },
}
