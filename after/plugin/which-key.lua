local wk = require("which-key")
local builtin = require("telescope.builtin")

-- vim.lsp.buf.format

wk.register({
  -- nvim tree
  e = { vim.cmd.NvimTreeToggle, "file tree" },
  -- formats (requires formatter installed via :Mason)
  f = { vim.lsp.buf.format, "format" },
  -- makes current file executable
  x = { "<cmd>!chmod +x %<cr>", "make file executable" },
  -- undotree
  u = { vim.cmd.UndotreeToggle, "undotree" },
  -- telescope
  p = {
    name = "telescope",
    -- find files
    f = { builtin.find_files, "find files" },
    -- find buffers
    b = { builtin.buffers, "find buffers" },
    -- grep string search
    s = {
      function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end,
      "grep string search",
    },
  },
  -- LSP
  l = {
    name = "LSP",
    h = { function() vim.lsp.buf.hover() end, "hover" },
    s = { function() vim.lsp.buf.workspace_symbol() end, "view workspace symbol" },
    d = { function() vim.diagnostic.open_float() end, "open diagnostic float" },
    j = { function() vim.diagnostic.goto_next() end, "goto next diagnostic"},
    k = { function() vim.diagnostic.goto_prev() end, "goto previous diagnostic"},
    a = { function() vim.lsp.buf.code_action() end, "code action" },
    f = { function() vim.lsp.buf.references() end, "references" },
    r = { function() vim.lsp.buf.rename() end, "rename" },
  }
}, { prefix = "<leader>" })