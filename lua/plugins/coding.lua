return {
  {
    "L3MON4D3/LuaSnip",
    build = (not LazyVim.is_win())
        and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
      or nil,
    dependencies = {
      {
        "rafamadriz/friendly-snippets",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
      -- Configure cmp to work w luasnip
      {
        "nvim-cmp",
        -- dependencies = {
        --   "saadparwaiz1/cmp_luasnip",
        -- },
        opts = function(_, opts)
          opts.snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          }
          table.insert(opts.sources, { name = "luasnip" })
        end,
      },
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
  },

  -- Better TS error messages
  { "dmmulroy/ts-error-translator.nvim" },

  -- Map jj or jk to escape
  { "max397574/better-escape.nvim", opts = {} },

  -- Switch between relative and absolute line numbers with ease
  { "cpea2506/relative-toggle.nvim" },
}
