return {
	"saghen/blink.cmp",
	opts_extend = {
		"sources.completion.enabled_providers",
		"sources.compat",
		"sources.default",
	},
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		completion = {
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},
		},
		sources = {
			compat = {},
			default = { "lsp", "path" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		fuzzy = { implementation = "lua" },
		keymap = {
			preset = "enter",
		},
	},
}
