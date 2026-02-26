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

-- Search options
vim.opt.incsearch = true -- Show matches as you type

-- Movement keymaps
vim.keymap.set("n", "gh", "^", {desc = "Go to start of line"})
vim.keymap.set("n", "gl", "$", {desc = "Go to end of line"})

-- Visual options 
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- How long to show matching bracket
vim.opt.cmdheight = 1 -- Command line height
vim.opt.winborder = "rounded"

-- Buffer keymaps
vim.keymap.set("n", "<Tab>", ":bnext<CR>", {desc = "Next buffer"})
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", {desc = "Previous buffer"})
vim.keymap.set("n", "]b", ":bnext<CR>", {desc = "Next buffer"})
vim.keymap.set("n", "[b", ":bprevious<CR>", {desc = "Previous buffer"})

-- Window keymaps 
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = "Go to left window"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = "Go to bottom window"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = "Go to top window"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = "Go to right window"})
vim.keymap.set("n", "<leader>ww", "<C-W>p", {desc = "Go to other window"})
vim.keymap.set("n", "<leader>wc", "<C-W>c", {desc = "Delete window"})
vim.keymap.set("n", "<leader>ws", "<C-W>s", {desc = "Split right"})
vim.keymap.set("n", "<leader>wv", "<C-W>v", {desc = "Split window below"})

-- Clear highlighting on escape
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", {desc = "Escape and clear hlsearch"})

-- Pair keymaps
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")

-- Diagnostics keymaps
vim.keymap.set("n", "<leader>wd", vim.diagnostic.open_float, {desc = "Line diagnostics"})

-- Colorscheme
vim.pack.add({
	"https://github.com/rebelot/kanagawa.nvim"
})
vim.cmd("colorscheme kanagawa-dragon")

-- LSP
vim.pack.add({
	"https://github.com/neovim/nvim-lspconfig"
})
vim.lsp.enable({
	"lua_ls",
	"clangd",
	"pyright",
	"fortls",
	"tinymist"
})

-- Oil
vim.pack.add({
	"https://github.com/stevearc/oil.nvim"
})
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open parent directory"})

-- mini.pick
vim.pack.add({
	"https://github.com/nvim-mini/mini.pick"
})
require("mini.pick").setup()
vim.keymap.set("n", "<leader>ff", ":Pick files<Cr>")
vim.keymap.set("n", "<leader>fb", ":Pick buffers<Cr>")
vim.keymap.set("n", "<leader>fg", ":Pick grep live<Cr>")
vim.keymap.set("n", "<leader>fh", ":Pick help<Cr>")

-- blink
vim.pack.add({
	"https://github.com/saghen/blink.cmp"
})
require("blink.cmp").setup({
	keymap = {
		preset = "default"
	},
	appearance = {
		nerd_font_variant = 'mono'
	},
	completion = {
		documentation = {
			auto_show = true
		}
	},
	sources = {
		default = {
			'lsp', 'path', 'snippets', 'buffer'
		},
	},
	fuzzy = {
		implementation = "lua"
	}
})
