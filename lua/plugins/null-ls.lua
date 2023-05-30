return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
  config = function()
    local lsp = require("lsp-zero").preset({})

    lsp.on_attach(function(_, bufnr)
      lsp.default_keymaps({ buffer = bufnr })
    end)

    lsp.setup()

    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Here you can add tools not supported by mason.nvim
      },
    })

    -- See mason-null-ls.nvim's documentation for more details:
    -- https://github.com/jay-babu/mason-null-ls.nvim#setup
    require("mason-null-ls").setup({
      ensure_installed = nil,
      automatic_installation = true, -- You can still set this to `true`
      automatic_setup = true,
    })

    -- deprecated
    --[[ require("mason-null-ls").setup_handlers() ]]
  end
}
