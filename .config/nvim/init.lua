----------------------
-- MY NEOVIM CONFIG --
----------------------

-- leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

------------------
-- INSTALL LAZY --
------------------

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', lazypath })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins')

-------------
-- OPTIONS --
-------------

-- tab-related (sleuth overrides)
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.smarttab = true

-- case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clear highlight when searching
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- misc
vim.opt.mouse = ''
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.inccommand = 'split'
-- vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.showmode = false
vim.opt.showcmd = false
vim.g.loaded_perl_provider = 0

------------------
-- AUTOCOMMANDS --
------------------

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-------------
-- KEYMAPS --
-------------

-- navigation --
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("i", "<C-c>", "<C-o>zz")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>o', builtin.oldfiles, {})
