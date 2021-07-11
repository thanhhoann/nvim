

" colorscheme config
lua << EOF
--vim.g.material_style = 'deep ocean'
--vim.g.material_italic_comments = true
--vim.g.material_italic_keywords = true
--vim.g.material_italic_functions = true
--vim.g.material_italic_variables = true
--vim.g.material_contrast = true
--vim.g.material_disable_background = false
--vim.g.material_custom_colors = { black = "#000000", bg = "#0F111A" }
vim.g.tokyodark_transparent_background = false
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = true
vim.g.tokyodark_color_gamma = "1.4"
vim.cmd("colorscheme tokyodark")

EOF

" Onedark theme
" dark, darker, cool, deep, warm, warmer
" let g:onedark_style = 'deep'
"
   
" let g:gruvbox_material_italic_variables=1
" let g:gruvbox_material_italic_functions=1
lua << EOF
-- Example config in lua
--m.g.calvera_style = 'deep ocean'
--m.g.calvera_italic_comments = true
--m.g.calvera_italic_keywords = true
--m.g.calvera_italic_functions = true
--m.g.calvera_italic_variables = false
--m.g.calvera_contrast = false
--m.g.calvera_borders = false
--m.g.calvera_disable_background = false
--m.g.calvera_hide_eob = true
--vim.g.calvera_custom_colors = { black = "#000000", bg = "#0F111A" }

-- Load the colorscheme
--require('calvera').set()
EOF

