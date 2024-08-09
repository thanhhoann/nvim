-- require("luasnip.loaders.from_vscode").lazy_load() -- loads friendly/snippets
-- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets" } }) -- loads custom snippets require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require("luasnip").filetype_extend("javascript", { "html" })

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local f = ls.function_node

local same = function(index)
  return f(function(arg)
    return arg[1]
  end, { index })
end

ls.filetype_extend("all", { "_" })

-- local types = require("luasnip.util.types")

ls.setup({
  update_events = { "TextChanged", "TextChangedI" },
  ext_opts = {
    -- [types.insertNode] = {
    --     active = { ... },
    --     visited = { ... },
    --     passive = { ... },
    --     snippet_passive = { ... }
    -- },
    [types.choiceNode] = {
      active = { ... },
      unvisited = { ... },
    },
    -- [types.snippet] = {
    --     passive = { ... }
    -- }
  },
})

-- testing snippets
ls.add_snippets("lua", {
  s("todos", {
    c(1, {
      t("TODO : "),
      t("FIXME : "),
      t("WARNING : "),
      t("INFO : "),
    }),
  }),
})

--          ╭─────────────────────────────────────────────────────────╮
--          │                   Javascript - React                    │
--          ╰─────────────────────────────────────────────────────────╯
ls.add_snippets("javascriptreact", {
  s("cl", fmt("console.log({})", { i(1) })),
  s("ef", {
    t({ "import React, { useState, useEffect } from 'react';", "" }),
    t({ "", "export default function " }),
    i(1, "name"),
    t({ "(" }),
    i(2, "props"),
    t({ ") {" }),
    t({ "", "   return <>" }),
    i(3),
    t({ "</>" }),
    t({ "", "}" }),
  }),
  s("ue", {
    t({ "React.useEffect(() => {", "" }),
    t({ "   " }),
    i(1),
    t({ "", "}, [" }),
    i(2),
    t({ "]", "" }),
  }),
  s("us", fmt("const [{}, set{}] = React.useState()", { i(1), i(2) })),
  s(
    "for",
    fmt(
      [[
      for (let {a} = 0; {a} < {}.length - 1 ; {a}++) {{
        {}
      }}
      ]],
      {
        a = i(1),
        i(2),
        i(3),
      },
      {
        repeat_duplicates = true,
      }
    )
  ),
})

--          ╭─────────────────────────────────────────────────────────╮
--          │                   Typescript - React                    │
--          ╰─────────────────────────────────────────────────────────╯
ls.add_snippets("typescriptreact", {
  s("cl", fmt("console.log({})", { i(1) })),
  s("ef", {
    -- t({ "import React, { useState, useEffect } from 'react';", "" }),
    -- t({ "", "export default function " }),
    t({ "export default function " }),
    i(1, "name"),
    t({ "(" }),
    -- i(2, "props"),
    t({ ") {" }),
    t({ "", "   return <>" }),
    i(2),
    t({ "</>" }),
    t({ "", "}" }),
  }),
  s("ue", {
    t({ "React.useEffect(() => {", "" }),
    t({ "   " }),
    i(1),
    t({ "", "}, [" }),
    i(2),
    t({ "]", "" }),
  }),
  s("us", fmt("const [{}, set{}] = React.useState({})", { i(1), i(2), i(3) })),
  s(
    "for",
    fmt(
      [[
      for (let {a} = 0; {a} < {}.length - 1 ; {a}++) {{
        {}
      }}
      ]],
      {
        a = i(1),
        i(2),
        i(3),
      },
      {
        repeat_duplicates = true,
      }
    )
  ),
})

--          ╭─────────────────────────────────────────────────────────╮
--          │                         Neogit                          │
--          ╰─────────────────────────────────────────────────────────╯
-- NOTE: conventional commits
--
-- feat: A new feature for the user or a significant addition to the application.
-- fix: A bug fix.
-- docs: Changes to documentation.
-- style: Changes that don't affect the code's meaning (white-space, formatting, missing semi-colons, etc.).
-- refactor: Code changes that neither fix a bug nor add a feature.
-- perf: Code changes that improve performance.
-- test: Adding or modifying tests.
-- build: Changes that affect the build system or external dependencies.
-- ci: Changes to CI configuration files and scripts.
-- chore: Other changes that don't modify src or test files, tool changes, configuration changes,
-- and changes to things that do not actually go into production at all.

ls.add_snippets("NeogitCommitMessage", {
  s("feat", fmt("✨ feat({}): {}", { i(1), i(2) })),
  s("fix", fmt("⚙️ fix({}): {}", { i(1), i(2) })),
  s("docs", fmt("⚙️ docs({}): {}", { i(1), i(2) })),
  s("chore", fmt("🥑 chore({}): {}", { i(1), i(2) })),
  s("refactor", fmt("⚡️ refactor({}): {}", { i(1), i(2) })),
  s("style", fmt("🌈 style({}): {}", { i(1), i(2) })),
  s("test", fmt("🧪 test({}): {}", { i(1), i(2) })),
})

--          ╭─────────────────────────────────────────────────────────╮
--          │                         Markdown                        │
--          ╰─────────────────────────────────────────────────────────╯

ls.add_snippets("markdown", {
  s("link_external", fmt("[{}]({})", { i(1), i(2) })),
})
