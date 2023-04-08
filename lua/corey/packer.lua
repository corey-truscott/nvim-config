vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Plugin manager
    use 'wbthomason/packer.nvim'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Colourscheme
    use { 'EdenEast/nightfox.nvim' }

    -- Better syntax highlighting
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use { 'nvim-treesitter/playground' }

    -- Language servers
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }

    -- Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    }

    -- Automatically closes parenthesis, quotes, etc.
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    -- Add comment capability
    use {
        'numToStr/Comment.nvim',
        requires = { { 'JoosepAlviste/nvim-ts-context-commentstring' } }
    }

    -- Change surrounding characters (i.e, ", ', etc.)
    use { 'tpope/vim-surround' }

    -- Change dates quickly
    use { "tpope/vim-speeddating" }

    -- Adds breadcrumbs to winbar
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",   -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })


    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


    -- Dashboard
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    -- View startup time
    use { "dstein64/vim-startuptime" }

    -- Toggleable terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- Run snippets within neovim
    -- use { 'michaelb/sniprun', { run = 'bash install.sh' } }

    -- Show hex values
    use { "norcalli/nvim-colorizer.lua", tag = '*', config = function()
        require("colorizer").setup()
    end }

    -- Adds an undo tree
    use { "mbbill/undotree" }

    -- View git changes within a file
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- Stops yank from moving your cursor
    use { "svban/YankAssassin.vim" }
end)
