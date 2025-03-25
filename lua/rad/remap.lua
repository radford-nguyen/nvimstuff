vim.g.mapleader = ','

-- open netrw
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)

-- show buffs
vim.keymap.set('n', '<leader>bs', vim.cmd.buffers)

-- clear highlighted matches
vim.keymap.set('n', '<leader><space>', vim.cmd.noh, {})

-- format json
fmtjson = function()
	vim.cmd("'<,'>!python -m json.tool")
end
vim.keymap.set('n', '<leader>j', fmtjson)
vim.keymap.set('v', '<leader>j', fmtjson)

-- remove trailing WS
vim.keymap.set('n', '<leader>W', function()
	vim.cmd(":%s/\\s\\+$//")
	vim.cmd.noh()
end)

-- puts the current filename in the pasta buffet
vim.keymap.set('n', '<leader>fn', ':let @" = expand("%")<CR>')
-- puts the current fq-filename in the pasta buffet
vim.keymap.set('n', '<leader>ffn', ':let @" = expand("%:p")<CR>')

-- word-wrapping
vim.keymap.set('n', '<leader>q', 'ciw\'<c-r>"\'')
vim.keymap.set('n', '<leader>Q', 'ciw"<c-r>""')
vim.keymap.set('n', '<leader>p', 'ciw(<c-r>")')
