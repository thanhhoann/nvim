lua <<EOF

local ts_utils = require 'nvim-treesitter.ts_utils'

require'nvim-treesitter.configs'.setup {
  textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
        }
  },
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  context_commentstring = {
    enable = true
  },
  autotag = {
    enable = true,
  },
   context_commentstring = {
    enable = true,
     config = {
      css = '// %s',
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      },
    },
  },

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
  refactor = {
    highlight_defiVitions = { enable = true },
      sjart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
     navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },

  },
}
EOF

" Statusline indicator

echo nvim_treesitter#statusline(90) 
