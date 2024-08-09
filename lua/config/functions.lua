function _G.custom_notify(command, message, level, title, time_out, icon, render_style)
  return command
    .. "<cmd>lua require('notify')('"
    .. " "
    .. message
    .. "', '"
    .. level
    .. "', {title='"
    .. title
    .. "', timeout='"
    .. time_out
    .. "', icon='"
    .. icon
    .. "', render='"
    .. render_style
    .. "'})<cr>"
end

function _G.set_colorscheme(name, hasConfigFile)
  if hasConfigFile == true then
    -- loads custom config
    require("plugins.config.colorschemes." .. name)
  end
  -- set via vim.cmd
  vim.cmd("colorscheme" .. " " .. name)
end

function _G.camel_to_snake()
  local line = vim.api.nvim_get_current_line()
  local col_start = vim.fn.col("'<") - 1
  local col_end = vim.fn.col("'>") - 1
  local selection = string.sub(line, col_start + 1, col_end + 1)
  local snake = selection:gsub("(%l)(%u)", "%1_%2"):lower()
  vim.api.nvim_set_current_line(line:sub(1, col_start) .. snake .. line:sub(col_end + 2))
  vim.cmd("normal! gv")
end
