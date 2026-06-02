-- ============================================================================
-- LSP
-- ============================================================================
vim.pack.add({"https://github.com/mason-org/mason.nvim"})
require("mason").setup()

vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})

vim.pack.add({"https://github.com/mason-org/mason-lspconfig.nvim"})
require("mason-lspconfig").setup({
	automatic_enable = true
})

vim.pack.add({"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"})
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"neocmake",

		"codelldb",
	}
})

-- ============================================================================
-- Debugging
-- ============================================================================
vim.pack.add({"https://codeberg.org/mfussenegger/nvim-dap"})
vim.pack.add({"https://github.com/jay-babu/mason-nvim-dap.nvim"})
require("mason-nvim-dap").setup({
	handlers = {}
})
vim.pack.add({"https://github.com/igorlfs/nvim-dap-view"})
