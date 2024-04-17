vim.g.have_nerd_font = true

local opt = vim.opt

-- Enable line numbers.
opt.relativenumber = true
opt.number = true

-- Tab options.
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search options.
opt.ignorecase = true
opt.smartcase = true

-- Split window settings.
opt.splitbelow = true
opt.splitright = true

-- Required for tokyodark color theme to work correctly.
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"
