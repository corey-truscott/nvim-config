if Theme == "Everforest" then
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
elseif Theme == "Tokyonight" then
    return {
        "folke/tokyonight.nvim",
        config = function()
            Colour = Colour or "tokyonight"
            vim.cmd.colorscheme(Colour)
        end,
    }
elseif Theme == "Gruvbox" then
    return {
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd [[
                  set background=dark
                  ]]

            Colour = Colour or "gruvbox"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Onedark" then
    return {
        "navarasu/onedark.nvim",
        config = function()
            Colour = Colour or "onedark"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Nord" then
    return {
        "shaunsingh/nord.nvim",
        config = function()
            Colour = Colour or "nord"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Dracula" then
    return {
        "Mofiqul/dracula.nvim",
        config = function()
            Colour = Colour or "dracula"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Vscode" then
    return {
        "Mofiqul/vscode.nvim",
        config = function()
            Colour = Colour or "vscode"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Terafox" then
    return {
        "EdenEast/nightfox.nvim",
        config = function ()
            Colour = Colour or "terafox"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Theme == "Dawnfox" then
    return {
        "EdenEast/nightfox.nvim",
        config = function ()
            Colour = Colour or "dawnfox"
            vim.cmd.colorscheme(Colour)
        end
    }
else
    vim.notify("Invalid theme. Please pick a valid one.")
end
