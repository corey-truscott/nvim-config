return {
  -- colourscheme
  { "EdenEast/nightfox.nvim",          lazy = true },

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    version = "0.1.1",
    -- or                            , branch = '0.1.x',
    dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  },

  -- better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", version = false },
  { "nvim-treesitter/playground",      lazy = true },

  -- language servers
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        cmd = "Mason",
      },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      {
        "hrsh7th/nvim-cmp",
        version = false,
        dependencies = {
          "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" }
      },
    },
  },

  -- formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  },

  -- allow mason and null-ls to talk to eachother
  { "jay-babu/mason-null-ls.nvim",                 lazy = true },

  -- add context based commenting
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },

  -- change surrounding characters (i.e, ", ', etc.)
  { "tpope/vim-surround",                          event = { "BufReadPre", "BufNewFile" } },

  -- change dates quickly
  { "tpope/vim-speeddating",                       event = { "BufReadPre", "BufNewFile" } },

  -- adds breadcrumbs to winbar
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      lazy = true,
      "nvim-tree/nvim-web-devicons",
      lazy = true,
      event = "VeryLazy" -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  },

  -- status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true, pt = true },
  },

  -- toggleable terminal
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    version = "*",
  },

  -- run snippets within neovim
  -- { 'michaelb/sniprun', { run = 'bash install.sh' } },

  -- show hex values
  {
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- adds an undo tree
  { "mbbill/undotree",        event = { "BufReadPre", "BufNewFile" } },

  -- view git changes within a file
  {
    "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" }
  },

  -- stops yank from moving your cursor
  { "svban/YankAssassin.vim", event = { "BufReadPre", "BufNewFile" } },

  -- add notifications functionality
  { "rcarriga/nvim-notify" },

  -- replace command mode, search, etc
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { { "MunifTanjim/nui.nvim", lazy = true } },
  },

  -- forces all windows that should be transparent, to be transparent
  { "xiyaowong/transparent.nvim" },
}
