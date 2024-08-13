-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local functions = require("config.functions")

-- " Use "fd" to exit insert.
vim.keymap.set("i", "fd", "<esc>")

-- Clear search results quickly.
vim.keymap.set("n", "<leader><space>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Buffer commands.
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>ba", "<cmd>bufdo bd<cr>bd<cr>", { desc = "Delete all buffers" })

-- Window commands.
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })
vim.keymap.set("n", "<leader>w-", "<cmd>split<cr>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>w<bar>", "<cmd>vsplit<cr>", { desc = "Split window vertically" })

-- Find and replace.
vim.keymap.set("n", "<leader>r", functions.replace_text_confirm, { desc = "Replace cursor text" })
vim.keymap.set("n", "<leader>R", functions.replace_text, { desc = "Replace cursor text (no conf)" })
