function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    if color == 'gruvbox' then
        vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" })
        vim.api.nvim_set_hl(0, 'GruvLight', { bg = '#504945'})
        vim.api.nvim_set_hl(0, 'GruvDark', { bg = '#282828'})
        vim.api.nvim_create_autocmd({"WinEnter"}, {
            callback = function(ev)
                vim.opt_local.winhighlight = "Normal:GruvDark,NormalNC:GruvLight"
            end
        })
    end
end

ColorMyPencils('gruvbox')

