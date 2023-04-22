NeorgPath = NeorgPath

return {
  "nvim-neorg/neorg",
  cmd = "Neorg",
  ft = "norg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {
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
      ["core.dirman"] = {
        config = {
          workspaces = {
            main = NeorgPath,
          },
          default_workspace = 'main'
        },
      },
    },
  },
  dependencies = { "nvim-lua/plenary.nvim", lazy = true, },
}
