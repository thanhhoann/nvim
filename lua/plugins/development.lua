return {

  -- Dev dependencies
  -- {
  --   "vuki656/package-info.nvim",
  --   requires = "MunifTanjim/nui.nvim",
  --   config = function()
  --     require("package-info").setup({
  --       colors = {
  --         up_to_date = "#33B67B", -- Text color for up to date dependency virtual text
  --         outdated = "#F00a00", -- Text color for outdated dependency virtual text
  --       },
  --       icons = {
  --         enable = true, -- Whether to display icons
  --         style = {
  --           up_to_date = "   ", -- Icon for up to date dependencies
  --           outdated = "   New version : ", -- Icon for outdated dependencies
  --         },
  --       },
  --       autostart = true, -- Whether to autostart when `package.json` is opened
  --       hide_up_to_date = false, -- It hides up to date versions when displaying virtual text
  --       hide_unstable_versions = false, -- It hides unstable versions from version list e.g next-11.1.3-canary3
  --       package_manager = "pnpm",
  --     })
  --   end,
  -- },

  -- {
  --   "kndndrj/nvim-dbee",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --   },
  --   build = function()
  --     -- Install tries to automatically detect the install method.
  --     -- if it fails, try calling it with one of these parameters:
  --     --    "curl", "wget", "bitsadmin", "go"
  --     require("dbee").install()
  --   end,
  --   config = function()
  --     require("dbee").setup(--[[optional config]])
  --   end,
  -- },
}
