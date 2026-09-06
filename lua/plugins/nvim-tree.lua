return {
	"nvim-tree/nvim-tree.lua",

	lazy = false,

	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},

	config = function()
		local api = require("nvim-tree.api")

		require("nvim-tree").setup({
			prefer_startup_root = true,
			on_attach = function(bufnr)
				api.config.mappings.default_on_attach(bufnr)

				vim.keymap.set("n", "s", api.node.open.horizontal, { buffer = bufnr })
				vim.keymap.set("n", "v", api.node.open.vertical, { buffer = bufnr })
				vim.keymap.set("n", "?", api.tree.toggle_help, { buffer = bufnr })
			end
		})
	end,

	keys = {
		{
			"<C-b>",
			"<cmd>NvimTreeToggle<cr>",
			desc = "Toggle file tree"
		}
	}
}
