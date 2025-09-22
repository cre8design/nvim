-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Switch Windows
vim.keymap.set("n", "<S-Left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<S-Right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<S-Down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<S-Up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Buffers
vim.keymap.set("n", "<C-n>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<C-o>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
