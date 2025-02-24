-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Manage Windows
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
vim.keymap.set("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>bo", function()
	Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
