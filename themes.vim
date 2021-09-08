" let g:calvera_italic_comments = 1
" let g:calvera_italic_keywords = 1
" let g:calvera_italic_functions = 1
" let g:calvera_contrast = 1
" "
" lua << EOF
" vim.g.nb_disable_background = true
" vim.g.nb_italic_comments  = true
" vim.g.nb_italic_keywords  = true
" vim.g.nb_italic_functions = true
" vim.g.nb_italic_variables = true
" EOF
" let g:nb_style = "night"
" colorscheme nebulous
"
" Vim Script
" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Load the colorscheme



lua << EOF
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be clear
    -- In particular, when you set it to 'all', that means all avaliable groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
EOF




colorscheme gloombuddy
