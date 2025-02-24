-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.g.snacks_indent = true
vim.g.autoformat = true
vim.wo.relativenumber = true
vim.opt.list = false
vim.opt.listchars = {
	tab = "│┈",
	eol = "↲",
	trail = "·",
	nbsp = "·",
	space = "·",
	multispace = "·",
	lead = "·",
}
vim.opt.cursorline = true
vim.opt.expandtab = false
vim.opt.tabstop = 3
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.textwidth = 80
vim.opt.shiftwidth = 3
