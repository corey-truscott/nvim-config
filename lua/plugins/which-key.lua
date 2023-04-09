return {
	{
		"folke/which-key.nvim",
    event = 'BufReadPost',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 0
			require("which-key").setup({
				presets = {
          operators = false,
          motions = false,
				},
			})
		end,
	},
}
