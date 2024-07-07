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
opt.scrolloff = 10

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- Enable folds.
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99

-- Enable spell checking.
opt.spelllang = "en_us"
opt.spell = true
