return {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			numbers = "both",
			diagnostics = "nvim_lsp",
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					highlight = "Directory",
					separator = false,
				},
			},
			separator_style = "thin",
		},
	},
	init = function()
		vim.cmd([[
			hi BufferLineFill guibg='#3a3a3a'
		]])
	end,
}
