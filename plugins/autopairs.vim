lua << EOF
local npairs = require("nvim-autopairs")

require('nvim-autopairs').setup({
  enable_check_bracket_line = false,
   ignored_next_char = "[%w%.]",-- will ignore alphanumeric and `.` symbol
})

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

require('nvim-treesitter.configs').setup {
    autopairs = {enable = true}
}

local ts_conds = require('nvim-autopairs.ts-conds')



EOF
