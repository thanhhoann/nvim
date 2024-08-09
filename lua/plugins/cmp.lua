return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --   if cmp.visible() then
        --     -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
        --     cmp.select_next_item()
        --   elseif vim.snippet.active({ direction = 1 }) then
        --     vim.schedule(function()
        --       vim.snippet.jump(1)
        --     end)
        --   elseif has_words_before() then
        --     cmp.complete()
        --   else
        --     fallback()
        --   end
        -- end, { "i", "s" }),
        -- ["<S-Tab>"] = cmp.mapping(function(fallback)
        --   if cmp.visible() then
        --     cmp.select_prev_item()
        --   elseif vim.snippet.active({ direction = -1 }) then
        --     vim.schedule(function()
        --       vim.snippet.jump(-1)
        --     end)
        --   else
        --     fallback()
        --   end
        -- end, { "i", "s" }),

        -- copied from https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if require("luasnip").expandable() then
              require("luasnip").expand()
            else
              cmp.confirm({
                select = true,
              })
            end
          else
            fallback()
          end
        end),

        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif require("luasnip").locally_jumpable(1) then
            require("luasnip").jump(1)
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif require("luasnip").locally_jumpable(-1) then
            require("luasnip").jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },

  -- SOURCES
  { "FelipeLema/cmp-async-path" },
  { "andersevenrud/cmp-tmux" },
}
