return {
	"zbirenbaum/copilot.lua",
	opt = {
		panel = {
			enabled = false,
		},
	},
	keys = {
		{
			"<leader>fp",
			function()
				if require("copilot.client").is_disabled() then
					require("copilot.command").enable()
				else
					require("copilot.command").disable()
				end
			end,
			desc = "Toggle (Copilot)",
		},
	},
}
