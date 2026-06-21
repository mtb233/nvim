-- autopairs
vim.pack.add({
	"https://github.com/windwp/nvim-autopairs"
})
require("nvim-autopairs").setup()

-- Tree Sitter
vim.pack.add({
	"https://github.com/romus204/tree-sitter-manager.nvim"
})
require("tree-sitter-manager").setup({
	ensure_installed = {
		"cpp",
		"cmake"
	}
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

vim.pack.add({ 'https://github.com/saghen/blink.lib', 'https://github.com/saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup()

-- bufferline
vim.pack.add({
	"https://github.com/akinsho/bufferline.nvim"
})
require("bufferline").setup()

-- Git signs
vim.pack.add({
	"https://github.com/lewis6991/gitsigns.nvim"
})
require("gitsigns").setup()

-- DAP View
vim.pack.add({"https://github.com/igorlfs/nvim-dap-view"})
