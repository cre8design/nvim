return {
	{
		"mason-org/mason.nvim",
		build = ":MasonUpdate",
		opts_extend = { "ensure_installed" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"shfmt",
			},
		},
	},
}
