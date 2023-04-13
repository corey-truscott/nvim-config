function setColourscheme(colour)
    colour = colour or "catppuccin-mocha"
    vim.cmd.colorscheme(colour)
end

setColourscheme()
