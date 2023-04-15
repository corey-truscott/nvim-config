 return {
    "utilyre/barbecue.nvim",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic", lazy = true,
      "nvim-tree/nvim-web-devicons", lazy = true,
    },
    config = function()
      require("barbecue").setup()
    end,
  }
