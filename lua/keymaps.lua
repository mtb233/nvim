-- Use "which-key.nvim" for keymaps
vim.pack.add({"https://github.com/folke/which-key.nvim"})
keys = require("which-key")
keys.add({
	-- better left/right line navigation
	{"H", "^", desc="Go to start of line",	mode={"n", "v"}, remap=true},
	{"L", "$", desc="Go to end of line",		mode={"n", "v"}, remap=true},

	-- Navigating/managing buffers
	{"<leader>b", group="buffer", mode="n"},
	{"bn", ":bnext<CR>", desc = "Next buffer"},
	{"bp", ":bprevious<CR>", desc = "Previous buffer"},
	{"<leader>bc", ":bd<CR>", desc = "Delete buffer"},

	-- Navigating/managing tabs
	{"<leader>t", group="tab", mode="n"},
	{"<leader>tn", ":tabnext<CR>", desc = "Next tab"},
	{"<leader>tp", ":tabprevious<CR>", desc = "Previous tab"},
	{"<Tab>", ":tabnext<CR>", desc = "Next tab"},
	{"<S-Tab>", ":tabprevious<CR>", desc = "Previous tab"},
	{"<leader>te", ":tabnew<CR>", desc = "New tab"},
	{"<leader>tc", ":tabclose<CR>", desc = "Delete tab"},

	-- Navigating/managing windows
	{"<leader>w", group="window", mode="n"},
	{"<C-h>", "<C-w>h", desc = "Go to left window"},
	{"<C-j>", "<C-w>j", desc = "Go to bottom window"},
	{"<C-k>", "<C-w>k", desc = "Go to top window"},
	{"<C-l>", "<C-w>l", desc = "Go to right window"},
	{"<leader>ww", "<C-W>p", desc = "Go to other window"},
	{"<leader>wc", "<C-W>c", desc = "Delete window"},
	{"<leader>ws", "<C-W>s", desc = "Split right"},
	{"<leader>wv", "<C-W>v", desc = "Split window below"},
	{"<leader>wd", vim.diagnostic.open_float, desc = "Line diagnostics", mode="n"},
	
	-- Clear highlighting on escape
	{"<esc>", "<cmd>noh<cr><esc>", desc = "Escape and clear hlsearch", mode={"i", "n"}},
})
