vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>e", vim.cmd.Ex, { desc = "explorer" })

-- 1. Clear search highlights with <Esc>
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- 2. Stay in visual mode after indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- 3. Center screen after jumping half-pages or searching
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- 4. Move lines up/down in Visual mode (like VS Code)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
