-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<S-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<S-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<S-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<S-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<C-n>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<C-o>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
