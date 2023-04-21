return {
  "VonHeikemen/lsp-zero.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lsp = require("lsp-zero")

    lsp.preset("recommended")

    lsp.ensure_installed({
      'lua_ls',
    })

    lsp.configure('lua_ls', {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    })

    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp.defaults.cmp_mappings({
      ['<C-p>'] = cmp.mapping.scroll_docs(-4),
      ['<C-n>'] = cmp.mapping.scroll_docs(4),
      ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<C-Space>"] = cmp.mapping.complete(),
    })

    cmp.setup({
      window = {
        documentation = cmp.config.window.bordered(),
      }
    })

    lsp.setup_nvim_cmp({
      mapping = cmp_mappings
    })

    lsp.set_preferences({
      suggest_lsp_servers = false,
      sign_icons = {
        error = '',
        warn = '',
        hint = '',
        info = '',
      },
    })

    lsp.on_attach(function(_, bufnr)
      local opts = { buffer = bufnr, remap = false }

      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end)

    lsp.setup()

    vim.diagnostic.config({
      virtual_text = true
    })
  end,
  branch = "v2.x",
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      event = { "BufReadPre", "BufNewFile" },
      {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall" },
      },
      { "williamboman/mason-lspconfig.nvim", lazy = true },
      -- Autocompletion
      {
        "hrsh7th/nvim-cmp",
        version = false,
        dependencies = {
          "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", },
      },
    },
  }
}
