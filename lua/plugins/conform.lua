return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "Format Injected Langs",
		},
	},
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			fish = { "fish_indent" },
			sh = { "shfmt" },
		},
		format_on_save = {
			timeout_ms = 500,
		},
		notify_on_error = true,
		notify_no_formatters = true,
	},
}
