-- Terminal Mappings
local function term_nav(dir)
	---@param self snacks.terminal
	return function(self)
		return self:is_floating() and "<c-" .. dir .. ">"
			or vim.schedule(function()
				vim.cmd.wincmd(dir)
			end)
	end
end

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = false },
		indent = {
			enabled = false,
			only_scope = true,
			only_current = true,
		},
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = false },
		scroll = { enabled = true },
		statuscolumn = { enabled = false },
		words = { enabled = true },
		terminal = {
			enabled = true,
			win = {
				keys = {
					nav_h = {
						"<S-Left>",
						term_nav("h"),
						desc = "Go to Left Window",
						expr = true,
						mode = "t",
					},
					nav_j = {
						"<S-Right>",
						term_nav("j"),
						desc = "Go to Lower Window",
						expr = true,
						mode = "t",
					},
					nav_k = {
						"<S-Down>",
						term_nav("k"),
						desc = "Go to Upper Window",
						expr = true,
						mode = "t",
					},
					nav_l = {
						"<S-Up>",
						term_nav("l"),
						desc = "Go to Right Window",
						expr = true,
						mode = "t",
					},
				},
			},
		},
	},
	keys = {
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>,",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>:",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Command History",
		},
		{
			"<leader>n",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>bo",
			function()
				Snacks.bufdelete.other()
			end,
			desc = "Delete all other Buffers",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gI",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"gy",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},
		{
			"<leader>tt",
			function()
				Snacks.terminal()
			end,
			desc = "Toggle Terminal",
			mode = "n",
		},
		{
			"<C-q>",
			"<cmd>close<cr>",
			desc = "Close Terminal",
			mode = "t",
		},
	},
}
