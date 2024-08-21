return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls").builtins
      opts.sources = { --override lazyvim's default sources
        -- nls.code_actions.refactoring,
        nls.completion.luasnip,
        -- typescript
        nls.formatting.biome.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "jsonc",
            "css",
          },
          args = {
            "check",
            "--write",
            "--unsafe",
            "--formatter-enabled=true",
            "--organize-imports-enabled=true",
            "--skip-errors",
            "--stdin-file-path=$FILENAME",
          },
        }),
        -- sql
        nls.diagnostics.sqlfluff.with({
          extra_args = { "--dialect", "postgres" },
        }),
        nls.formatting.sqlfluff.with({
          extra_args = { "--dialect", "postgres" },
        }),
        -- nls.formatting.pg_format,
        -- .lua
        nls.formatting.stylua,
        -- dotfiles
        nls.formatting.shfmt.with({
          filetypes = { "sh", "zsh" },
        }),
      }
      opts.debug = true
      return opts
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    -- opts = function(_, opts)
    --   opts.formatters.sqlfluff = {
    --     args = { "format", "--dialect=ansi", "-" },
    --   }
    --   for _, ft in ipairs(sql_ft) do
    --     opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
    --     table.insert(opts.formatters_by_ft[ft], "sqlfluff")
    --   end
    -- end,
  },
}
