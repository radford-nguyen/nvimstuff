vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, { desc = "open netrw" })

vim.keymap.set("n", "<leader>bs", vim.cmd.buffers, { desc = "show [b]uffer[s]" })

vim.keymap.set("n", "<leader><space>", vim.cmd.noh, { desc = "clear highlighting" })

fmtjson = function()
    vim.cmd("'<,'>!python -m json.tool")
end
vim.keymap.set("n", "<leader>j", fmtjson, { desc = "format json (selection)" })
vim.keymap.set("v", "<leader>j", fmtjson, { desc = "format json (selection)" })

vim.keymap.set("n", "<leader>W", function()
    vim.cmd(":%s/\\s\\+$//")
    vim.cmd.noh()
end, { desc = "remove trailing WS in entire file" })

vim.keymap.set("n", "<leader>fn", ':let @" = expand("%")<CR>', {
    desc = "puts the current [f]ile[n]ame in the pasta buffet",
})

vim.keymap.set("n", "<leader>ffn", ':let @" = expand("%:p")<CR>', {
    desc = "puts the current [f]ully-qualified [f]ile[n]ame in the pasta buffet",
})

-- executing stuf
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "E[x]ecute the current lua file" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "E[x]ecute the current lua selection" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "E[x]ecute the current lua selection" })

-- word-wrapping
vim.keymap.set("n", "<leader>wq", "ciw'<c-r>\"'<esc>", {
    desc = "wrap a word in single [q]uotes",
})
vim.keymap.set("n", "<leader>wqq", 'ciw"<c-r>""<esc>', {
    desc = "wrap a word in double [qq]uotes",
})
vim.keymap.set("n", "<leader>wp", 'ciw(<c-r>")<esc>', {
    desc = "wrap a word in [p]arens",
})

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- term mode remaps
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end,
})
local job_id = 0
vim.keymap.set("n", "<leader>st", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("L")
    -- vim.api.nvim_win_set_height(0, 15)
    job_id = vim.bo.channel
end,
{ desc = "Open a [s]mol [t]erminal boi" })
-- now can use the job_id to send commands to the smol term
vim.keymap.set("n", "<leader>test", function()
    vim.fn.chansend(job_id, { "ls -la\r\n" })
end)

-- window movement
vim.keymap.set("n", "<space>wh", "<C-w>h")
vim.keymap.set("n", "<space>wj", "<C-w>j")
vim.keymap.set("n", "<space>wk", "<C-w>k")
vim.keymap.set("n", "<space>wl", "<C-w>l")
vim.keymap.set("n", "<space>wH", "<C-w>H")
vim.keymap.set("n", "<space>wJ", "<C-w>J")
vim.keymap.set("n", "<space>wK", "<C-w>K")
vim.keymap.set("n", "<space>wL", "<C-w>L")
