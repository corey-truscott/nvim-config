return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  version = false,
  dependencies = {
    "nvim-treesitter/playground",
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "norg" },

      sync_install = false,
      auto_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      }
    }
  end
}
