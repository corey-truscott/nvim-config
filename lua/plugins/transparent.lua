return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            groups = { -- table: default groups
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLineNr', 'EndOfBuffer',
            },
        })

        if Transparent == true then
            vim.cmd.TransparentEnable()
        elseif Transparent == false then
            vim.cmd.TransparentDisable()
        end
    end
}
