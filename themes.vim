
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

colorscheme spaceduck
   
let g:tmuxline_theme = 'zenburn'

let g:nb_style = "midnight"


" colorscheme config
lua << EOF

vim.g.nb_disable_background = true
vim.g.nb_italic_comments  = false
vim.g.nb_italic_keywords  = true
vim.g.nb_italic_functions = false

EOF
