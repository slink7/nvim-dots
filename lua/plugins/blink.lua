return {
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"rafamadriz/friendly-snippets"
		},
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "accept", "fallback" },
				["<CR>"] = { "accept", "fallback" }
			},
			completion = {
				documentation = {
					auto_show = true
				}
			},
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer"
				}
			}
		}
	}
}
