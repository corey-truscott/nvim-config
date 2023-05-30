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
elseif Gruvbox then
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
elseif Onedark then
    return {
        "navarasu/onedark.nvim",
        config = function()
            Colour = Colour or "onedark"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Nord then
    return {
        "shaunsingh/nord.nvim",
        config = function()
            Colour = Colour or "nord"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Dracula then
    return {
        "Mofiqul/dracula.nvim",
        config = function()
            Colour = Colour or "dracula"
            vim.cmd.colorscheme(Colour)
        end
    }
elseif Vscode then
    return {
        "Mofiqul/vscode.nvim",
        config = function()
            Colour = Colour or "vscode"
            vim.cmd.colorscheme(Colour)
        end
    }
end
