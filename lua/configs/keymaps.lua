vim.g.mapleader = " "

-- NORMAL MODE
-- format and save
vim.keymap.set('n', 'W', ':Prettier<CR>:w<CR>')

-- format
vim.keymap.set('n', '<leader>f', ':LspZeroFormat<CR>:w<CR>')

-- copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- replace selected word with regex
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])




-- VISUAL MODE
-- moving strings
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- INSERT MODE
-- esc when inserting
vim.keymap.set("i", "<C-c>", "<Esc>")
