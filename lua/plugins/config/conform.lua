return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      typescriptreact = { "biome", "rustywind" },
    }
  end,
}
