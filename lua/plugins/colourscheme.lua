return {
  "sainnhe/everforest",
  config = function()
    vim.cmd [[
      let g:everforest_background = 'hard'
      let g:everforest_better_performance = 1
    ]]

    colour = colour or "everforest"
    vim.cmd.colorscheme(colour)
  end,
}
