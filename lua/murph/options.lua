vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- I know this is forbidden, but excuse me
vim.opt.mouse = "a"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

-- min no. of lines above and below the current line on the buffer at all times
vim.opt.scrolloff = 8

vim.opt.clipboard = "unnamed,unnamedplus"
