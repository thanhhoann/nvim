local open_with_trouble = require("trouble.sources.telescope").open
local z_utils = require("telescope._extensions.zoxide.utils")

local telescope = require("telescope")
local actions = require("telescope.actions")
local config = require("telescope.config")
local builtin = require("telescope.builtin")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(config.values.vimgrep_arguments) }

-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules" },
    preview = {
      filesize_limit = 0.1, -- MB
    },
    -- `hidden = true` is not supported in text grep commands.
    vimgrep_arguments = vimgrep_arguments,
    layout_config = { prompt_position = "bottom" },
    mappings = {
      i = {
        ["<c-t>"] = open_with_trouble,
        ["<esc>"] = actions.close,
        ["<C-u>"] = false, -- clear prompt
        ["<c-d>"] = actions.delete_buffer + actions.move_to_top, -- delete a buffer from picker without closing telescope
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
      },
      n = { ["<c-t>"] = open_with_trouble },
    },
  },
  pickers = {
    find_files = { theme = "ivy", layout_config = { height = 0.4 } },
    git_files = { theme = "ivy", layout_config = { height = 0.4 } },
    live_grep = { theme = "ivy", layout_config = { height = 0.4 } },
    buffers = { theme = "ivy", layout_config = { height = 0.4 } },
    keymaps = { theme = "ivy", layout_config = { height = 0.4 } },
    file_browser = { theme = "ivy", layout_config = { height = 0.4 } },
    treesitter = { theme = "ivy", layout_config = { height = 0.4 } },
    help_tags = { theme = "ivy", layout_config = { height = 0.5 } },
    man_pages = {
      sections = { "1", "2", "3" },
      theme = "ivy",
      layout_config = { height = 0.4 },
    },
  },
  extensions = {
    zoxide = {
      prompt_title = "[ Zoxide List ]",

      -- Zoxide list command with score
      list_command = "zoxide query -ls",
      mappings = {
        default = {
          action = function(selection)
            vim.cmd.edit(selection.path)
            builtin.find_files({ cwd = selection.path })
          end,
          after_action = function(selection)
            print("Changed to " .. selection.path)
          end,
        },
        ["<C-s>"] = { action = z_utils.create_basic_command("split") },
        ["<C-v>"] = { action = z_utils.create_basic_command("vsplit") },
        ["<C-e>"] = { action = z_utils.create_basic_command("edit") },
        ["<C-b>"] = {
          keepinsert = true,
          action = function(selection)
            builtin.file_browser({ cwd = selection.path })
          end,
        },
        ["<C-f>"] = {
          keepinsert = true,
          action = function(selection)
            builtin.find_files({ cwd = selection.path })
          end,
        },
        ["<C-t>"] = {
          action = function(selection)
            vim.cmd.tcd(selection.path)
          end,
        },
      },
    },
  },
})

telescope.load_extension("yank_history")
telescope.load_extension("zoxide")
