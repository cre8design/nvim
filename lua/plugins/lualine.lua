return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			section_separators = "",
			component_separators = "",
		},
	},
	init = function(_, opts)
		require("lualine").setup(opts)
	end,
}
