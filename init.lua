-- IDEAS
--   conventional-commit.nvim: show popup or steps to set a commit, like better-commits (cli)
--   font-picker.nvim: show 2 panes side-by-side, left is font list, right is preview

require("config.core") -- Bootstrap lazy.nvim & LazyVim

-- 󰘧 Personal Configurations
-- LazyVim autoloads in lua/config: autocmds, keymaps, options
require("config.user_commands")
require("config.functions")
require("config.db")

-- 󰘧 Plugins Configurations
--  Important Plugins
require("plugins.config.lsp")
require("plugins.config.telescope")
require("plugins.config.luasnip")
require("plugins.config.cmp")
require("plugins.config.quick-fix")
require("plugins.config.flash")
require("plugins.config.dressing")
-- require("plugins.config.none-ls")
-- require("plugins.config.conform")

--  Less important
require("plugins.config.copilot-chat")
require("plugins.config.oil")
require("plugins.config.rip-substitute")
require("plugins.config.neogit")
require("plugins.config.highlight-colors")
require("plugins.config.obsidian")
-- require("plugins.config.spectre")
-- require("plugins.config.gen") -- generate text using LLMs with customizable prompts

-- 󰘧 Colorscheme
-- tokyonight | night-owl | rose-pine | catppuccin | tokyodark | nightfall
set_colorscheme("nightfall", true) -- (colorscheme: string, hasConfigFile: boolean)

-- Disable diagnostic virtual_text for tiny-inline-diagnostic.nvim
-- vim.diagnostic.config({ virtual_text = false })
