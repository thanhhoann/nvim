-- Registers copilot-chat source and enables it for copilot-chat filetype (so copilot chat window)
require("CopilotChat.integrations.cmp").setup()

local good_commit_prompt = require("plugins.config.llm_prompts.good_commit").prompt

local select = require("CopilotChat.select")
local actions = require("CopilotChat.actions")

require("CopilotChat").setup({
  question_header = "## 󰞇 @thanhhoann 󰞇 ",
  answer_header = "## 󰚩 Ngu Vãi Lồn 󰚩 ",
  error_header = "## Error ",
  system_prompt = "You are specialized in Next.js App Router, TypeScript, ShadcnUI, Tailwind CSS; avoids pages router. Has preloaded documentation of Next.js version 14 and ShadcnUI version 0.8.\n",
  prompts = {
    CommitCheck = {
      prompt = good_commit_prompt,
      mapping = "<leader>ccmc",
      description = "Propmpt for checking commit message",
      selection = require("CopilotChat.select").visual,
    },
    Commit = {
      prompt = "Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit."
        .. " Also, "
        .. good_commit_prompt,
      selection = select.gitdiff,
    },
  },

  -- default window options
  window = {
    layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace'
    width = 0.5, -- fractional width of parent, or absolute width in columns when > 1
    height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
    -- Options below only apply to floating windows
    relative = "editor", -- 'editor', 'win', 'cursor', 'mouse'
    border = "single", -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    row = nil, -- row position of the window, default is centered
    col = nil, -- column position of the window, default is centered
    title = "Copilot Chat", -- title of chat window
    footer = nil, -- footer of chat window
    zindex = 1, -- determines if window is on top or below other floating windows
  },

  -- default mappings
  mappings = {
    complete = {
      detail = "Use @<Tab> or /<Tab> for options.",
      insert = "<Tab>",
    },
    close = {
      normal = "q",
      insert = "<leader>q",
    },
    reset = {
      normal = "<C-r>",
      insert = "<C-l>",
    },
    submit_prompt = {
      normal = "<CR>",
      insert = "<C-s>",
    },
    accept_diff = {
      normal = "<C-y>",
      insert = "<C-y>",
    },
    yank_diff = {
      normal = "gy",
    },
    show_diff = {
      normal = "gd",
    },
    show_system_prompt = {
      normal = "gp",
    },
    show_user_selection = {
      normal = "gs",
    },
  },
})
