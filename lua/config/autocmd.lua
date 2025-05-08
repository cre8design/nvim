vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.tsx", "*.ts" },
	callback = function()
		vim.lsp.buf.code_action({
			apply = true,
			context = {
				only = {
					"source.organizeImports.ts",
				},
				diagnostics = {},
			},
		})
	end,
})
