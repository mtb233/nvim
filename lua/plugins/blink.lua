return {
	"saghen/blink.cmp",
	dependencies = {"rafamadriz/friendly-snippets"},
	opts = {
		keymap = {preset = "default"},
		appearance = {
			nerd_font_variant = "mono"
		},
		completion = {
			documentation = {
				auto_show = false
			}
		},
		source = {
			"lsp",
			"path",
			"snippets",
			"buffer"
		},
		fuzzy = {
			implementation = "lua"
		},
		opts_extend = {"source.default"}
	}
}
