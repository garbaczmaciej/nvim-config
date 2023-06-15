vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Searching stuff
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use "savq/melange-nvim"
    -- vim.opt.termguicolors = true
    -- vim.cmd.colorscheme 'melange'
    --
    use { "catppuccin/nvim", as = "catppuccin" }
    vim.cmd.colorscheme "catppuccin"

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- Show trouble log from LSP
    use("nvim-tree/nvim-web-devicons")
    use("folke/trouble.nvim")

    -- Commenting out
    use("tpope/vim-commentary")

    -- Running code snippets
    use { 'michaelb/sniprun', run = 'sh ./install.sh'}

    -- Adding bookmarks 
    use("MattesGroeger/vim-bookmarks")

    -- Autopairs for brackets
    use{
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

end)

