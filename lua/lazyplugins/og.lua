
-- my OG plugins from before the packer->lazy.nvim migration
local plugins = {
    {
        'nvim-telescope/telescope.nvim', version = '0.1.6',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },

    {
        'ellisonleao/gruvbox.nvim',
        name = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },

    'nvim-treesitter/playground',

    --'theprimeagen/harpoon',
    --'mbbill/undotree',
    'tpope/vim-fugitive',

    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'onsails/lspkind.nvim' },
            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
}

return plugins
