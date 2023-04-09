return {
  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.1",
    -- or                            , branch = '0.1.x',
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  -- colourscheme
  { "EdenEast/nightfox.nvim",          priority = 1000,   lazy = false },

  -- better syntax highlighting
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-treesitter/playground" },

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
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
    },
  },

  -- formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },

  -- allow mason and null-ls to talk to eachother
  { "jay-babu/mason-null-ls.nvim" },

  -- file tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },

  -- automatically closes parenthesis, quotes, etc.
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- add comment capability
  {
    "numToStr/Comment.nvim",
    dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
  },

  -- change surrounding characters (i.e, ", ', etc.)
  { "tpope/vim-surround" },

  -- change dates quickly
  { "tpope/vim-speeddating" },

  -- adds breadcrumbs to winbar
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons",  -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  },

  -- status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", pt = true },
  },

  -- toggleable terminal
  {
    "akinsho/toggleterm.nvim",
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
    version = "*",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- adds an undo tree
  { "mbbill/undotree" },

  -- view git changes within a file
  {
    "lewis6991/gitsigns.nvim"
  },

  -- stops yank from moving your cursor
  { "svban/YankAssassin.vim" },

  -- speeds up startup time
  { "lewis6991/impatient.nvim" },

  -- adds tabs
  { "romgrk/barbar.nvim",      dependencies = "nvim-web-devicons" },

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
