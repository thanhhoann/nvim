-- An example nvim-lspconfig capabilities setting
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Ensure that dynamicRegistration is enabled! This allows the LS to take into account actions like the
-- Create Unresolved File code action, resolving completions for unindexed code blocks, ...
capabilities.workspace = {
  didChangeWatchedFiles = {
    dynamicRegistration = true,
  },
}

require("lspconfig").markdown_oxide.setup({
  capabilities = capabilities, -- again, ensure that capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
  on_attach = on_attach, -- configure your on attach config
})

require("lspconfig").vtsls.setup({
  on_attach = lsp_attach,
  capabilities = lsp_capabilities,

  settings = {
    typescript = {
      preferences = {
        importModuleSpecifier = "non-relative",
        autoImportFileExcludePatterns = { "@radix-ui", "vaul" },
      },
    },
  },
})

require("lspconfig").jsonls.setup({
  settings = {
    json = {
      schemas = require("schemastore").json.schemas({
        extra = {
          {
            description = "Biome JSON Schema",
            fileMatch = "biome.jsonc",
            name = "biome.jsonc",
            url = "https://biomejs.dev/schemas/1.8.3/schema.json",
          },
        },
      }),
      validate = { enable = true },
    },
  },
})
