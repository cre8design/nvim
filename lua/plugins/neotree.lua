return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		-- fill any relevant options here
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
		},
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
