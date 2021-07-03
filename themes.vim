
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif


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
--vim.g.tokyodark_transparent_background = false
--vim.g.tokyodark_enable_italic_comment = true
--vim.g.tokyodark_enable_italic = true
--vim.g.tokyodark_color_gamma = "1.4"
--vim.cmd("colorscheme tokyodark")

EOF

" Onedark theme
" dark, darker, cool, deep, warm, warmer
" let g:onedark_style = 'deep'
 colorscheme gloombuddy
   
