return {
  -- colourscheme
  { "EdenEast/nightfox.nvim",          priority = 1000,   lazy = false },

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    version = "0.1.1",
    -- or                            , branch = '0.1.x',
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  -- better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", version = false,   event = { "BufReadPost", "BufNewFile" } },
  { "nvim-treesitter/playground",      event = "VeryLazy" },

  -- language servers
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      {
        "hrsh7th/nvim-cmp",
        version = false,
        event = "BufReadPre",
        dependencies = {
          "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" }
      },
    },
  },

  -- formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  -- allow mason and null-ls to talk to eachother
  { "jay-babu/mason-null-ls.nvim", event = "VeryLazy" },

  -- file tree
  {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    dependencies = { { "nvim-tree/nvim-web-devicons", event = "VeryLazy" } },
  },

  -- automatically closes parenthesis, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    config = function()
      require("nvim-autopairs").setup(opts)
    end,
  },

  -- add comment capability
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
  },

  -- change surrounding characters (i.e, ", ', etc.)
  { "tpope/vim-surround",          event = "VeryLazy" },

  -- change dates quickly
  { "tpope/vim-speeddating",       event = "VeryLazy" },

  -- adds breadcrumbs to winbar
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
      event = "VeryLazy" -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  },

  -- status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", event = "VeryLazy", pt = true },
  },

  -- toggleable terminal
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("toggleterm").setup()
    end,
  },

  -- run snippets within neovim
  -- { 'michaelb/sniprun', { run = 'bash install.sh' } },

  -- show hex values
  {
    "norcalli/nvim-colorizer.lua",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- adds an undo tree
  { "mbbill/undotree",        event = "VeryLazy" },

  -- view git changes within a file
  {
    "lewis6991/gitsigns.nvim", event = "VeryLazy"
  },

  -- stops yank from moving your cursor
  { "svban/YankAssassin.vim", event = "VeryLazy" },

  -- adds tabs
  { "romgrk/barbar.nvim",     dependencies = "nvim-web-devicons", event = "VeryLazy" },

  -- add notifications functionality
  { "rcarriga/nvim-notify" },

  -- fuzzy finder
  {
    "folke/noice.nvim",
    dependencies = { { "MunifTanjim/nui.nvim" } },
  },

  -- forces all windows that should be transparent, to be transparent
  { "xiyaowong/transparent.nvim" },
}
