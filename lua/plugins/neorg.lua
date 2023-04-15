local neorg_path = "~/docs/neorg"

return {
  "nvim-neorg/neorg",
  cmd = "Neorg",
  ft = "norg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.norg.concealer"] = {
        config = {
          icons = {
            todo = {
              on_hold = {
                icon = "󱑒 "
              },
            },
          },
        },
      },
      ["core.norg.dirman"] = {
        config = {
          workspaces = {
            main = neorg_path,
          },
          default_workspace = 'main'
        },
      },
    },
  },
  dependencies = { "nvim-lua/plenary.nvim", lazy = true, },
}
