return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		{ "3rd/image.nvim", opts = {}, config = function() end },
	},
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		-- fill any relevant options here
	},
	keys = {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({
					toggle = true,
				})
			end,
			desc = "Explorer NeoTree (Root Dir)",
		},
	},
}
