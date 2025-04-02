vim.g.mapleader = ','
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>fv', vim.cmd.Ex, { desc = 'open netrw' })

vim.keymap.set('n', '<leader>bs', vim.cmd.buffers, { desc = 'show [b]uffer[s]' })

vim.keymap.set('n', '<leader><space>', vim.cmd.noh, { desc = 'clear highlighting' })

fmtjson = function()
	vim.cmd("'<,'>!python -m json.tool")
end
vim.keymap.set('n', '<leader>j', fmtjson, { desc = 'format json (selection)' })
vim.keymap.set('v', '<leader>j', fmtjson, { desc = 'format json (selection)' })

vim.keymap.set('n', '<leader>W', function()
	vim.cmd(":%s/\\s\\+$//")
	vim.cmd.noh()
end, { desc = 'remove trailing WS in entire file' })

vim.keymap.set('n', '<leader>fn', ':let @" = expand("%")<CR>', {
    desc = 'puts the current [f]ile[n]ame in the pasta buffet'
})

vim.keymap.set('n', '<leader>ffn', ':let @" = expand("%:p")<CR>', {
    desc = 'puts the current [f]ully-qualified [f]ile[n]ame in the pasta buffet'
})

-- word-wrapping
vim.keymap.set('n', '<leader>wq', 'ciw\'<c-r>"\'<esc>', {
    desc = 'wrap a word in single [q]uotes'
})
vim.keymap.set('n', '<leader>wqq', 'ciw"<c-r>""<esc>', {
    desc = 'wrap a word in double [qq]uotes'
})
vim.keymap.set('n', '<leader>wp', 'ciw(<c-r>")<esc>', {
    desc = 'wrap a word in [p]arens'
})

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
