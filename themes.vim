
let g:tmuxline_theme = 'zenburn'
let g:nb_style = "midnight"
colorscheme nebulous


" colorscheme config
lua << EOF

vim.g.nb_disable_background = true
vim.g.nb_italic_comments  = false
vim.g.nb_italic_keywords  = true
vim.g.nb_italic_functions = false

EOF
