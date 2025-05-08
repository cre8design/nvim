-- Split Window
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
vim.keymap.set(
	"n",
	"<leader>-",
	"<C-W>s",
	{ desc = "Split Window Below", remap = true }
)
vim.keymap.set(
	"n",
	"<leader>|",
	"<C-W>v",
	{ desc = "Split Window Right", remap = true }
)
vim.keymap.set(
	"n",
	"<leader>wd",
	"<C-W>c",
	{ desc = "Delete Window", remap = true }
)

-- Switch Windows
vim.keymap.set(
	"n",
	"<S-Left>",
	"<C-w><C-h>",
	{ desc = "Move focus to the left window" }
)
vim.keymap.set(
	"n",
	"<S-Right>",
	"<C-w><C-l>",
	{ desc = "Move focus to the right window" }
)
vim.keymap.set(
	"n",
	"<S-Down>",
	"<C-w><C-j>",
	{ desc = "Move focus to the lower window" }
)
vim.keymap.set(
	"n",
	"<S-Up>",
	"<C-w><C-k>",
	{ desc = "Move focus to the upper window" }
)

-- Resize window using <ctrl> arrow keys
vim.keymap.set(
	"n",
	"<C-Up>",
	"<cmd>resize +2<cr>",
	{ desc = "Increase Window Height" }
)
vim.keymap.set(
	"n",
	"<C-Down>",
	"<cmd>resize -2<cr>",
	{ desc = "Decrease Window Height" }
)
vim.keymap.set(
	"n",
	"<C-Left>",
	"<cmd>vertical resize -2<cr>",
	{ desc = "Decrease Window Width" }
)
vim.keymap.set(
	"n",
	"<C-Right>",
	"<cmd>vertical resize +2<cr>",
	{ desc = "Increase Window Width" }
)

-- Buffers
vim.keymap.set("n", "<C-n>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<C-o>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Diagnostics
vim.keymap.set(
	"n",
	"<leader>cd",
	vim.diagnostic.open_float,
	{ desc = "Line Diagnostics" }
)
vim.keymap.set(
	"n",
	"]d",
	Util.diagnostics.to(true, "ERROR"),
	{ desc = "Next Diagnostic" }
)
vim.keymap.set(
	"n",
	"[d",
	Util.diagnostics.to(false, "ERROR"),
	{ desc = "Prev Diagnostic" }
)

-- Toggle Vim Options
vim.keymap.set("n", "<leader>ul", function()
	vim.o.list = not vim.o.list
end)
vim.keymap.set("n", "<leader>uw", function()
	vim.o.wrap = not vim.o.wrap
end)
