-- ============================================================================
-- Oil
-- ============================================================================
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

-- bufferline
vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim"
})
require("bufferline").setup()

-- =============================================================================
-- DAP View
-- =============================================================================
vim.pack.add({"https://github.com/igorlfs/nvim-dap-view"})
