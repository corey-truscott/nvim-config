vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- colourscheme
    use { 'EdenEast/nightfox.nvim' }

    -- better syntax highlighting
    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use { 'nvim-treesitter/playground' }

    -- language servers
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- file tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { { 'nvim-tree/nvim-web-devicons' } }
    }

    -- automatically closes parenthesis, quotes, etc.
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    -- add comment capability
    use {
        'numToStr/Comment.nvim',
        requires = { { 'JoosepAlviste/nvim-ts-context-commentstring' } }
    }

    -- change surrounding characters (i.e, ", ', etc.)
    use { 'tpope/vim-surround' }

    -- change dates quickly
    use { "tpope/vim-speeddating" }

    -- make git changes
    use { "tpope/vim-fugitive" }

    -- adds breadcrumbs to winbar
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


    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


    -- dashboard
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    -- view startup time
    use { "dstein64/vim-startuptime" }

    -- toggleable terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- run snippets within neovim
    -- use { 'michaelb/sniprun', { run = 'bash install.sh' } }

    -- show hex values
    use { "norcalli/nvim-colorizer.lua", tag = '*', config = function()
        require("colorizer").setup()
    end }

    -- adds an undo tree
    use { "mbbill/undotree" }

    -- view git changes within a file
    use {
        'lewis6991/gitsigns.nvim',
    }

    -- stops yank from moving your cursor
    use { "svban/YankAssassin.vim" }
end)
