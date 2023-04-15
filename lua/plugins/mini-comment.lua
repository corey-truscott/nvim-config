return {
  "echasnovski/mini.comment",
  event = { "BufReadPre", "BufNewFile" },
  options = {
    ignore_blank_line = false,
    start_of_line = false,
    pad_comment_parts = true,
  },
  mappings = {
    comment = 'gc',
    comment_line = 'gcc',
    textobject = 'gc',
  },
}
