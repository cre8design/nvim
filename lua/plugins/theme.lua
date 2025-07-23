return {
	"luisiacc/gruvbox-baby",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("gruvbox-baby")
	end,
}

-- return {
-- 	"sainnhe/gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- Optionally configure and load the colorscheme
-- 		-- directly inside the plugin declaration.
-- 		vim.g.gruvbox_material_enable_italic = true
-- 		vim.g.gruvbox_material_background = "hard"
-- 		-- vim.g.gruvbox_material_visual = "green"
-- 		vim.g.gruvbox_material_better_performance = 1
-- 		-- vim.g.gruvbox_material_foreground = "mix"
-- 		vim.g.gruvbox_material_transparent_background = "0"
-- 		vim.o.background = "dark"
-- 		vim.cmd.colorscheme("gruvbox-material")
-- 	end,
-- }

-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.o.background = "dark"
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }
