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
			menu = {
				auto_show = true,
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", "source_name", gap = 1 },
					},
				},
			},
			documentation = {
				auto_show = true,
			},
			ghost_text = {
				enabled = true,
			},
		},
		sources = {
			default = { "lsp", "path" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		fuzzy = {
			implementation = "lua",
		},
		keymap = {
			preset = "enter",
		},
	},
}
