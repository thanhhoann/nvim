-- Make all keymaps silent by default
local key = vim.keymap.set
---@diagnostic disable-next-line: duplicate-set-field
vim.keymap.set = function(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  return key(mode, lhs, rhs, opts)
end

-- Select all
key("n", "<leader>a", "gg<S-v>G")

-- Split window
key("n", "ss", ":split<Return>")
key("n", "sv", ":vsplit<Return>")

-- quick quit
key("n", "<leader>q", ":q!<CR>")

-- quick save
key("n", "z", _G.custom_notify("<cmd>w<cr>", "  ", "info", "File status", "500", "   ", "compact"))

-- quick format & save
key(
  { "n", "i" },
  "zf",
  _G.custom_notify("<cmd>LazyFormat<cr><cmd>:w<cr>", "󱡄 +  ", "info", "File status", "500", "   ", "compact")
)

-- esc & saves ! simple !
key("i", "<esc>", "<esc>:w<cr>")

-- move line up/down
key("v", "J", ":m '>+1<cr>gv=gv")
key("v", "K", ":m '<-2<cr>gv=gv")

-- lsp
-- code action
key("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")

-- tmux
key(
  "n",
  "<leader>m",
  "<CMD>!tmux display-popup -w 130 -h 40 -E 'env TERM=wezterm nvim /Users/thanhhoann/core_machine/desktop/obsidian/TODOs.md'<CR>"
)

-------------
-- PLUGINS --
-------------

-- neogit https://github.com/NeogitOrg/neogit
key("n", "<leader>gg", ":Neogit<CR>")

-- nvim-spectre https://github.com/nvim-pack/nvim-spectre
key("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
key("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
key("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})

-- nvim-rip-substiture https://github.com/chrisgrieser/nvim-rip-substitute
key({ "n", "x" }, "<leader>fs", function()
  require("rip-substitute").sub()
end)

-- yanky.nvim https://github.com/gbprod/yanky.nvim
key("n", "]p", "<Plug>(YankyPutIndentAfterLinewise)")
key("n", "[p", "<Plug>(YankyPutIndentBeforeLinewise)")
key("n", "]P", "<Plug>(YankyPutIndentAfterLinewise)")
key("n", "[P", "<Plug>(YankyPutIndentBeforeLinewise)")

key("n", ">p", "<Plug>(YankyPutIndentAfterShiftRight)")
key("n", "<p", "<Plug>(YankyPutIndentAfterShiftLeft)")
key("n", ">P", "<Plug>(YankyPutIndentBeforeShiftRight)")
key("n", "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)")

key("n", "=p", "<Plug>(YankyPutAfterFilter)")
key("n", "=P", "<Plug>(YankyPutBeforeFilter)")

key({ "n", "i" }, "zp", "<cmd>Telescope yank_history<cr>")

-- copilot-chat
key("n", "<leader>cz", function()
  local input = vim.fn.input(" Nextjs 14 App router Expert ")
  local prompt = "You are an expert in Nextjs 14 App Router. " .. input
  if input ~= "" then
    require("CopilotChat").ask(prompt)
  end
end)

-- oil
key("n", "-", "<CMD>Oil --float<CR>")

-- inc-rename
key("n", "<leader>r", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
