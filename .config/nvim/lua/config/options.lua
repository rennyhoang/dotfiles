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
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- misc
vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.inccommand = "split"
-- vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.showmode = false
vim.opt.showcmd = false
vim.g.loaded_perl_provider = 0
