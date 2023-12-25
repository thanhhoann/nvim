local LSP = 'plugins.lsp.'
local UTILS = 'plugins.utils.'
local EDITING_SUPPORT = 'plugins.editing_support.'
local STATUS_LINE = 'plugins.status_line.'
local NOTE_TAKING = 'plugins.note_taking.'
local ENTERTAIN = 'plugins.entertain.'

require(LSP .. 'lsp')
require(LSP .. 'treesitter')
require(LSP .. 'fugitive')

require(UTILS .. 'telescope')
require(UTILS .. 'harpoon')
require(UTILS .. 'oil')
require(UTILS .. 'tmux-navigator')
require(UTILS .. 'neoscroll')

require(EDITING_SUPPORT .. 'null-ls')
require(EDITING_SUPPORT .. 'prettier')
require(EDITING_SUPPORT .. 'cmp')
require(EDITING_SUPPORT .. 'luasnip')
require(EDITING_SUPPORT .. 'comment')

require(NOTE_TAKING .. 'telekasten')
require(NOTE_TAKING .. 'smp') -- Markdown Previewer

require(STATUS_LINE .. 'lualine')

require(ENTERTAIN .. 'mini-animate')
