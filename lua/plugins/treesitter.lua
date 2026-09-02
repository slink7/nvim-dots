return {
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",

		opts = {
				ensure_installed = {
						"c",
						"cpp",
						"rust",
						"typescript",
						"lua",
						-- "c_sharp"
				}
		}
}
