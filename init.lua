-- IDEAS
--   conventional-commit.nvim: show popup or steps to set a commit, like better-commits (cli)
--   font-picker.nvim: show 2 panes side-by-side, left is font list, right is preview
require("config.core")

require("config.user_commands")
require("config.auto_commands")
require("config.functions")

require("plugins.config.telescope")

require("plugins.config.colorschemes.tokyodark")
vim.cmd.colorscheme("tokyodark")

vim.cmd("lua vim.loader.enable()")

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
