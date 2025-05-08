vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.autoformat = true
vim.wo.relativenumber = true
vim.opt.cmdheight = 0
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
vim.opt.autowrite = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.conceallevel = 2
vim.opt.confirm = true
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
vim.opt.foldlevel = 99
vim.opt.formatexpr = "v:lua.require'conform'.formatexpr()"
vim.opt.formatoptions = "jcroqlnt"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.jumpoptions = "view"
vim.opt.laststatus = 3
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.ruler = false
vim.opt.scrolloff = 4
vim.opt.sessionoptions = {
	"buffers",
	"curdir",
	"tabpages",
	"winsize",
	"help",
	"globals",
	"skiprtp",
	"folds",
}
vim.opt.shiftround = true
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spelllang = { "en" }
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = vim.g.vscode and 1000 or 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.virtualedit = "block"
vim.opt.wildmode = "longest:full,full"
vim.opt.winminwidth = 5
