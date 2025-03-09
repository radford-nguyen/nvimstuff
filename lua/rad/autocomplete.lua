local cmp = require'cmp'

cmp.setup({
   snippet = {
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body)
      end,
   },
   mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(), -- or abort()
      ["<CR>"] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
   },
   formatting = {
      format = function(_, vim_item)
         --vim.cmd("packadd lspkind-nvim")
         vim_item.kind = require("lspkind").presets.codicons[vim_item.kind]
         .. "  "
         .. vim_item.kind
         return vim_item
      end,
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "vsnip" },
      { name = "path" },
   },
})

vim.cmd([[
augroup NvimCmp
au!
au FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }
augroup END
]])
