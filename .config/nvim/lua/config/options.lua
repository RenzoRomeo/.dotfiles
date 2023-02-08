-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Tabs
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true -- Use one tab after newline
vim.o.expandtab = true -- Use spaces instead of tabs

vim.o.wrap = true -- Line wrap
vim.o.hlsearch = false -- Don't highlight search
vim.o.termguicolors = true

vim.opt.scrolloff = 8 -- Scroll with 8 lines padding

-- Persist undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
