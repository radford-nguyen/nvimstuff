vim.g.mapleader = ','
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>bs', vim.cmd.buffers)

-- clear highlighted matches
vim.keymap.set('n', '<leader><space>', vim.cmd.noh, {})

-- format json
--vim.keymap.set('n', '<leader>j', vim.cmd("'<,'>!python -m json.tool"))
--vim.keymap.set('v', '<leader>j', vim.cmd("'<,'>!python -m json.tool"))

--nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
--nnoremap <leader>f :let @" = expand("%")<CR>

vim.keymap.set('n', '<leader>W', function()
	vim.cmd(":%s/\\s\\+$//")
	vim.cmd.noh()
end)
vim.keymap.set('n', '<leader>f', ':let @" = expand("%")<CR>')

-- word-wrapping
vim.keymap.set('n', '<leader>q', 'ciw\'<c-r>"\'')
vim.keymap.set('n', '<leader>Q', 'ciw"<c-r>""')
vim.keymap.set('n', '<leader>p', 'ciw(<c-r>")')
