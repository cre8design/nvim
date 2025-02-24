return {
	-- Main LSP Configuration
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enabled = false },
		codelens = { enabled = true },
		diagnostics = { virtual_text = false },
	},
}
