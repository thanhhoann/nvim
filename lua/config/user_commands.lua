local createUserCommand = vim.api.nvim_create_user_command

-- PNPM Install
-- createUserCommand("PNPMInstall", function()
--   local tmux_cmd = "pnpm add " .. package
--   local term_cmd = '"' .. "!tmux send -t 2 " .. "'" .. tmux_cmd .. "' Enter" .. '"'
--   vim.cmd("exec " .. term_cmd)
-- end, { bang = true })

-- Format w lsp
createUserCommand("Format", function(args)
  vim.cmd("lua vim.lsp.buf.format()")
end, { range = true })

-- Toggle wrap | nowrap & spell | nospell
createUserCommand("ToggleOption", function(opts)
  local option = opts.args

  if option == "wrap" then
    if vim.wo.wrap then
      vim.wo.wrap = false
      print("Changed Option: wrap unset")
    else
      vim.wo.wrap = true
      print("Changed Option: wrap set")
    end
  elseif option == "spell" then
    if vim.wo.spell then
      vim.wo.spell = false
      print("Changed Option: spell unset")
    else
      vim.wo.spell = true
      print("Changed Option: spell set")
    end
  else
    print("Invalid option. Use 'wrap' or 'spell'.")
  end
end, { nargs = 1 }) -- This specifies that the command takes one argument

-- Restart PNPM dev server
createUserCommand("PnpmRestartServer", function()
  vim.cmd("!tmux send-keys -t 1 C-c")
  vim.cmd("!tmux send-keys -t 1 'pnpm dev'")
  vim.cmd("!tmux send-keys -t 1 C-m")
end, { bang = true })
