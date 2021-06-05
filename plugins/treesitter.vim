lua <<EOF

local ts_utils = require 'nvim-treesitter.ts_utils'

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages

  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "rust" },  -- list of language that will be disabled
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },

   incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" Statusline indicator
echo nvim_treesitter#statusline(90)  " 90 can be any length
module->expression_statement->call->identifier

