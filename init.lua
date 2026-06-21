-- Leader
vim.g.mapleader = " "

-- Line options
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true -- Highlight current line
vim.opt.wrap = false -- Don't wrap lines
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

-- Indentation options
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.softtabstop = 2 -- Soft tab stop
vim.opt.smartindent = true -- Smart auto-indenting
vim.opt.autoindent = true -- Copy indent from current line
vim.opt.colorcolumn = "120" -- Highlight column 80

-- Search options
vim.opt.incsearch = true -- Show matches as you type

-- Visual options 
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- How long to show matching bracket
vim.opt.cmdheight = 1 -- Command line height
vim.opt.winborder = "rounded"

-- Colorscheme
vim.pack.add({"https://github.com/rebelot/kanagawa.nvim"})
vim.opt.background = "dark"
vim.cmd.colorscheme("kanagawa-wave")

require("keymaps")
require("lsp-dap")
require("plugins")
