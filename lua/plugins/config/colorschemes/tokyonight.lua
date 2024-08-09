require("tokyonight").setup({
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = true,
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end,
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    -- • fg: color name or "#RRGGBB", see note.
    -- • bg: color name or "#RRGGBB", see note.
    -- • sp: color name or "#RRGGBB"
    -- • blend: integer between 0 and 100
    -- • bold: boolean
    -- • standout: boolean
    -- • underline: boolean
    -- • undercurl: boolean
    -- • underdouble: boolean
    -- • underdotted: boolean
    -- • underdashed: boolean
    -- • strikethrough: boolean
    -- • italic: boolean
    -- • reverse: boolean
    -- • nocombine: boolean
    comments = { italic = true },
    keywords = { underdouble = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  on_highlights = function(hl, c)
    do
      return
    end
    local prompt = "#2d3149"
    hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg }
    hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
    hl.TelescopePromptNormal = { bg = prompt }
    hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
    hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
    hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
    hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
  end,
  sidebars = {
    "qf",
    "vista_kind",
    "terminal",
    "spectre_panel",
    "startuptime",
    "Outline",
  }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
})
