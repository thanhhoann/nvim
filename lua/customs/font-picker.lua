local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local sorters = require("telescope.sorters")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

function ListFontNames()
  -- local handle = io.popen("fc-list :family | cut -d: -f2 | cut -d, -f1 | sort | uniq")
  local handle = io.popen("fc-list :spacing=mono | cut -d: -f2 | cut -d, -f1 | sort | uniq")

  local result = handle:read("*a")
  handle:close()
  return vim.split(result, "\n")
end

function FontPicker()
  local fonts = ListFontNames()

  pickers
    .new({}, {
      prompt_title = "Fonts",
      finder = finders.new_table({
        results = fonts,
      }),
      sorter = sorters.get_generic_fuzzy_sorter(),
      attach_mappings = function(_, map)
        map("i", "<CR>", function(prompt_bufnr)
          local selection = action_state.get_selected_entry()
          actions.close(prompt_bufnr)
          -- print(vim.inspect(selection.value))
          if selection and selection.value then
            -- Yank the selected font name
            vim.fn.setreg('"', selection.value)
            print(" " .. selection.value)
          end
        end)
        return true
      end,
    })
    :find()
end

vim.api.nvim_set_keymap("n", "<leader>fp", ":lua FontPicker()<CR>", { noremap = true, silent = true })
