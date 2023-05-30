if Everforest then
    return {
        "sainnhe/everforest",
        config = function()
            vim.cmd [[
                  let g:everforest_background = 'hard'
                  let g:everforest_better_performance = 1
                  ]]

            Colour = Colour or "everforest"
            vim.cmd.colorscheme(Colour)
        end,
    }
elseif Tokyonight then
    return {
        "folke/tokyonight.nvim",
        config = function()
            Colour = Colour or "tokyonight"
            vim.cmd.colorscheme(Colour)
        end,
    }
elseif Solarized then
    return {
        "shaunsingh/solarized.nvim",
        config = function ()
            Colour = Colour or "solarized"
            vim.cmd.colorscheme(Colour)
        end
    }
end

