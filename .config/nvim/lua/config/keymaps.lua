-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- move lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "<leader>mb", "di****<esc>hhp", { desc = "Auto bold" })
vim.keymap.set("v", "<leader>mi", "di**<esc>hp", { desc = "Auto italic" })
vim.keymap.set("v", "<leader>ml", "di[]()<esc>hhhpllli", { desc = "Auto link" })
vim.keymap.set("v", "<leader>mc", "di``<esc>hp", { desc = "Auto backtick" })

vim.keymap.set("n", "<leader>bw", "<cmd>bufdo bwipeout<cr>", { desc = "Close all buffers" })
