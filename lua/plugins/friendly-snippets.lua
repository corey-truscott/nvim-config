return {
  "rafamadriz/friendly-snippets",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
