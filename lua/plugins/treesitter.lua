return {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "VeryLazy",
    dependencies = "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = "all",
        textobjects = {
          move = {
            enable = true,
            goto_next_start = {
              ["]f"] = "@function.outer",
              ["]a"] = "@argument.outer",
              ["]m"] = "@method.outer",
              -- ...
            },
            goto_previous_start = {
              ["[f"] = "@function.outer",
              ["[a"] = "@argument.outer",
              ["[m"] = "@method.outer",
              -- ...
            },
          },
        },
      })
    end,
  },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     -- add tsx and treesitter
  --     vim.list_extend(opts.ensure_installed, {
  --       "tsx",
  --       "typescript",
  --     })
  --   end,
  --
  --   config = function()
  --     require("nvim-treesitter.configs").setup({
  --       ensure_installed = { "markdown", "markdown_inline", "sql" },
  --       highlight = {
  --         enable = true,
  --       },
  --     })
  --     -- MDX
  --     vim.filetype.add({
  --       extension = {
  --         mdx = "mdx",
  --       },
  --     })
  --     vim.treesitter.language.register("markdown", "mdx")
  --   end,
  -- },
}
