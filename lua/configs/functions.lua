function SetRelavtiveNu(isRel)
    if isRel == true then
        vim.opt.relativenumber = true
    else
        vim.opt.relativenumber = false
    end
end

function SetColor(color, isTransparent)
    color = color or "tokyonight-night"
    vim.cmd.colorscheme(color)

    if isTransparent == true then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = none })
    end
end


