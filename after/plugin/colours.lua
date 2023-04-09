function setColourscheme(colour)
    colour = colour or "terafox"
    vim.cmd.colorscheme(colour)
end

setColourscheme()
