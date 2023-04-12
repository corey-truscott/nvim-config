return {
  "akinsho/bufferline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      buffer_close_icon = "",
      modified_icon = "",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 30,
      max_prefix_length = 30,
      tab_size = 21,
      indicator = {
        style = 'icon'
      },
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
