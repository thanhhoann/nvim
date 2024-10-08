return {
  {
    "neovim/nvim-lspconfig",
    event = "InsertEnter",
    config = function()
      require("plugins.config.lsp")
    end,
    opts = {
      document_highlight = { enabled = false },
      diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          -- prefix = "●",
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
          prefix = "icons",
        },
      },
      codelens = {
        enabled = false,
      },
      -- make sure mason installs the server
      servers = {
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
        -- not installing tsserver
        tsserver = {
          enabled = false,
        },
      },
      setup = {
        tsserver = function()
          -- disable tsserver
          return true
        end,
      },
    },
  },

  -- Add icons for completion items
  { "onsails/lspkind.nvim", event = "VeryLazy" },
}
