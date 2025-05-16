--[[ Reminders:
--
-- <C-R> ${reg} => paste from register ${reg}.  Works in mode[v,c]
-- gc to comment code in visual mode (is nvim built-in now)
--
--]]
require('rad.lazy')
require('rad.opts')
require('rad.remap')
require('rad.autocomplete')

vim.cmd('set nowrap et ts=4 sw=4 et')

vim.g.netrw_list_hide = '\\.swp$,\\~$,\\.netrwhist'
