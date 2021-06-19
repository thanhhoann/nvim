lua << EOF

 require("trouble").setup {
     {
    position = "left", -- position of the list can be: bottom, top, left, right
    height = 7, -- height of the trouble list when position is top or bottom
    width = 50, -- width of the list when position is left or right
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = true, -- automatically open the list when you have diagnostics
    auto_close = true, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatyically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
}
EOF

