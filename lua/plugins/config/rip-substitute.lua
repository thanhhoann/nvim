require("rip-substitute").setup({
  popupWin = {
    title = " 󰘧 rip-substitute",
    border = "double",
    matchCountHlGroup = "Keyword",
    noMatchHlGroup = "ErrorMsg",
    hideSearchReplaceLabels = false,
    position = "bottom", -- "top"|"bottom"
  },
  prefill = {
    normal = "cursorWord", -- "cursorWord"|false
    visual = "selectionFirstLine", -- "selectionFirstLine"|false
    startInReplaceLineIfPrefill = false,
  },
  keymaps = {
    -- normal & visual mode
    confirm = "<CR>",
    abort = "q",
    prevSubst = "<Up>",
    nextSubst = "<Down>",
    openAtRegex101 = "R",
    insertModeConfirm = "<C-CR>", -- (except this one, obviously)
  },
  incrementalPreview = {
    matchHlGroup = "IncSearch",
    rangeBackdrop = {
      enabled = true,
      blend = 50, -- between 0 and 100
    },
  },
  editingBehavior = {
    -- Experimental. When typing `()` in the `search` line, automatically
    -- adds `$n` to the `replace` line.
    autoCaptureGroups = false,
  },
  notificationOnSuccess = true,
})
