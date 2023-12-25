require("smp").setup({
    --where are your MDs
    home = vim.fn.expand("/Users/thanhhoann/core_machine/desktop/notes"),
    -- for Telekasten user, don't use Telekasten? keep this line, no harm
    templates = vim.fn.expand("/Users/thanhhoann/core_machine/desktop/notes") .. "/" .. "templates",
    -- your custom markdown css, if not defined or not exist,
    -- will use the default css
    smp_markdown_css = "~/.config/smp/my_markdown.css",
    -- your markdown snippets, if not defined or not exist,
    -- snippets like {snippet_1} will keep it's as-is form.
    smp_snippets_folder = "~/.config/smp/snippets",
    -- copy single line filepath into 'home/assets' folder
    -- default is true
    copy_file_into_assets = true,
})
