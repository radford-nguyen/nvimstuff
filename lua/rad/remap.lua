vim.g.mapleader = ','
vim.keymap.set('n', '<leader>fv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>bs', vim.cmd.buffers)

-- clear highlighted matches
vim.keymap.set('n', '<leader><space>', vim.cmd.noh, {})

-- format json
--vim.keymap.set('n', '<leader>j', vim.cmd("'<,'>!python -m json.tool"))
--vim.keymap.set('v', '<leader>j', vim.cmd("'<,'>!python -m json.tool"))

