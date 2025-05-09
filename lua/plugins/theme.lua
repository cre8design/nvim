return {
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			terminal_colors = true,
			transparent_mode = false,
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
		init = function(_, opts)
			vim.o.background = "dark"
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
