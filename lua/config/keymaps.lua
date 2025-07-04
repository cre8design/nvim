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

-- better up/down
vim.keymap.set(
	{ "n", "x" },
	"j",
	"v:count == 0 ? 'gj' : 'j'",
	{ desc = "Down", expr = true, silent = true }
)
vim.keymap.set(
	{ "n", "x" },
	"<Down>",
	"v:count == 0 ? 'gj' : 'j'",
	{ desc = "Down", expr = true, silent = true }
)
vim.keymap.set(
	{ "n", "x" },
	"k",
	"v:count == 0 ? 'gk' : 'k'",
	{ desc = "Up", expr = true, silent = true }
)
vim.keymap.set(
	{ "n", "x" },
	"<Up>",
	"v:count == 0 ? 'gk' : 'k'",
	{ desc = "Up", expr = true, silent = true }
)

-- Clear search and stop snippet on escape
vim.keymap.set({ "i", "n", "s" }, "<esc>", function()
	vim.cmd("noh")
	return "<esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
vim.keymap.set(
	"n",
	"<leader>ur",
	"<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
	{ desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set(
	"n",
	"n",
	"'Nn'[v:searchforward].'zv'",
	{ expr = true, desc = "Next Search Result" }
)
vim.keymap.set(
	"x",
	"n",
	"'Nn'[v:searchforward]",
	{ expr = true, desc = "Next Search Result" }
)
vim.keymap.set(
	"o",
	"n",
	"'Nn'[v:searchforward]",
	{ expr = true, desc = "Next Search Result" }
)
vim.keymap.set(
	"n",
	"N",
	"'nN'[v:searchforward].'zv'",
	{ expr = true, desc = "Prev Search Result" }
)
vim.keymap.set(
	"x",
	"N",
	"'nN'[v:searchforward]",
	{ expr = true, desc = "Prev Search Result" }
)
vim.keymap.set(
	"o",
	"N",
	"'nN'[v:searchforward]",
	{ expr = true, desc = "Prev Search Result" }
)

-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- save file
vim.keymap.set(
	{ "i", "x", "n", "s" },
	"<C-s>",
	"<cmd>w<cr><esc>",
	{ desc = "Save File" }
)

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- commenting
vim.keymap.set(
	"n",
	"gco",
	"o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>",
	{ desc = "Add Comment Below" }
)
vim.keymap.set(
	"n",
	"gcO",
	"O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>",
	{ desc = "Add Comment Above" }
)

-- LSP
vim.keymap.set("n", "<leader>cA", function()
	vim.lsp.buf.code_action({
		apply = true,
		context = {
			only = {
				"source.sortImports.ts",
				"source.removeUnusedImports.ts",
				"source.addMissingImports.ts",
				"source.removeUnused.ts",
				"source.fixAll.ts",
			},
			diagnostics = {},
		},
	})
end, { desc = "Code Action (Source)" })

vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- Doge
vim.keymap.set("n", "<Leader>d", "<Plug>(doge-generate)")
vim.keymap.set("n", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("n", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("i", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("i", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("x", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("x", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
