return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason.nvim",
		{ "mason-org/mason-lspconfig.nvim", config = function() end },
	},
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	opts = {
		inlay_hints = { enabled = false },
		codelens = { enabled = true },
		diagnostics = { virtual_text = false },
	},
	keys = {
		{
			"K",
			function()
				return vim.lsp.buf.hover()
			end,
			desc = "Hover",
		},
		{
			"<c-k>",
			function()
				return vim.lsp.buf.signature_help()
			end,
			mode = "i",
			desc = "Signature Help",
		},
		{
			"<leader>ca",
			vim.lsp.buf.code_action,
			desc = "Code Action",
			mode = { "n", "v" },
		},
		{
			"gd",
			vim.lsp.buf.definition,
			desc = "Goto Definition",
		},
		{
			"gr",
			vim.lsp.buf.references,
			desc = "References",
		},
		{
			"gi",
			vim.lsp.buf.implementation,
			desc = "Goto Implementation",
		},
		{
			"gy",
			vim.lsp.buf.type_definition,
			desc = "Goto T[y]pe Definition",
		},
		{
			"gD",
			vim.lsp.buf.declaration,
			desc = "Goto Declaration",
		},
		-- {
		-- 	"<leader>cc",
		-- 	vim.lsp.codelens.run,
		-- 	desc = "Run Codelens",
		-- 	mode = { "n", "v" },
		-- },
		-- {
		-- 	"<leader>cC",
		-- 	vim.lsp.codelens.refresh,
		-- 	desc = "Refresh & Display Codelens",
		-- 	mode = { "n" },
		-- },
	},
	config = function(_, opts)
		require("mason-lspconfig").setup({
			automatic_enable = true,
		})
	end,
}
