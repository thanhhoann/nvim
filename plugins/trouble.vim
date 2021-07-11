lua << EOF

 require("trouble").setup {
     {
    auto_open = true, -- automatically open the list when you have diagnostics
    auto_close = true, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatyically preview the location of the diagnostic. <esc> to close preview and go back to last window
     }
 }
    

EOF

