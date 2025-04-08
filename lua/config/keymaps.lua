-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- Set tab
map("n", "<leader>tt", "<cmd>tabnew<cr>")
map("n", "<leader>tn", "<cmd>tabnext<cr>")
map("n", "<leader>tp", "<cmd>tabprev<cr>")
map("n", "<leader>tx", "<cmd>tabclose<cr>")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Set indent
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Set size
map("n", "<leader>wk", "<cmd>horizontal resize +5<cr>", { desc = "Window size up", remap = true })
map("n", "<leader>wj", "<cmd>horizontal resize -5<cr>", { desc = "Window size up", remap = true })
map("n", "<leader>wl", "<cmd>vertical resize +5<cr>", { desc = "Window size up", remap = true })
map("n", "<leader>wh", "<cmd>vertical resize -5<cr>", { desc = "Window size up", remap = true })

-- Set copy & paste
map("n", "<leader>aa", "ggVG")
map("n", "<leader>p", "\"0p")
map("n", "<leader>P", "\"0P")
map("n", "<C-c>", "\"+y")
