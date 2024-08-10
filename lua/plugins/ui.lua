return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
    opts = function()
      local logo = [[
    ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆        
     ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦      
       ⠈   ⠈⢿⣿⣟⠦⠄⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄    
            ⣸⣿⣿⢧⠄⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄   
           ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀  
    ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿  
   ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷⠄  ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄  
  ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄ 
  ⠙⠃   ⣼⣿⡟⠌ ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿⠐⣿⣿⡇ ⠛⠻⢷⣄
       ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆   ⠁
        ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⣤⣾⡿⠃    
  ⢀⣀⠀⣠⣀⣠⣾⣿⣿⡿⠛⠋⠉⠉⠉   ⠉⠉⠉⠉⠛⠻⣿⣿⣷⣄⣀⢿⡽⢻⣦
  ⠻⠶⠾⠿⠿⠿⠋⠉   @thanhhoan   ⠉⠻⠿⠿⠿⠿⠿⠋
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = function () vim.api.nvim_input("<cmd>:e ~/.config/nvim/init.lua<cr>") end, desc = " init.lua", icon = " ", key = "1" },
            { action = function () vim.api.nvim_input("<cmd>:e /Users/thanhhoann/core_machine/desktop/obsidian/TODOs.md<cr>") end, desc = " TODOs", icon = " ", key = "2" },
            { action = function () vim.api.nvim_input("<cmd>enew<cr>") end, desc = " New file", icon = " ", key = "n" },
            { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit", icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      -- timeout = 1000,
      -- render = "compact",
      -- max_height = function()
      --   return math.floor(vim.o.lines * 0.75)
      -- end,
      -- max_width = function()
      --   return math.floor(vim.o.columns * 0.25)
      -- end,
      -- on_open = function(win)
      --   vim.api.nvim_win_set_config(win, { zindex = 100 })
      -- end,
    },
  },

  -- Floating filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {
            -- InclineNormal = { guibg = "#303270", guifg = "#a9b1d6" },
            InclineNormalNC = { guibg = "none", guifg = "#a9b1d6" },
          },
        },
        window = {
          placement = { vertical = "bottom", horizontal = "center" },
          margin = { vertical = 0, horizontal = 0 },
          padding = 5,
        },
        hide = { cursorline = true },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[unsaved] " .. filename
          end

          local function diagnostic_label()
            local icons = { error = "", warn = "", info = "", hint = "" }
            local label = {}

            for severity, icon in pairs(icons) do
              local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
              if n > 0 then
                table.insert(label, { icon .. " " .. n .. " ", group = "DiagnosticSign" .. severity })
              end
            end
            if #label > 0 then
              table.insert(label, { "┊ " })
            end
            return label
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)

          return {
            { diagnostic_label() },
            { icon, guifg = color },
            { " " },
            { filename },
            { guibg = "none" },
          }
        end,
      })
    end,
  },
}
