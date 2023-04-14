return {
	{
		"folke/which-key.nvim",
    event = 'VeryLazy',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 150
			require("which-key").setup({
				presets = {
          operators = false,
          motions = false,
				},
			})
		end,
	},
}
