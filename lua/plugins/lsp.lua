return {
		{
				"mason-org/mason.nvim",
				opts = {}
		},
		{
				"mason-org/mason-lspconfig.nvim",
				opts = {
						ensure_installed = {
								"clangd",
								"rust_analyzer",
								"ts_ls",
								"lua_ls",
								-- "omnisharp"
						}
				},
				dependencies = {
						"mason-org/mason.nvim",
						"neovim/nvim-lspconfig"
				}
		},
		{
				"neovim/nvim-lspconfig",
				config = function()
						vim.lsp.config("lua_ls", {})
						vim.lsp.enable("lua_ls")
				end
		}
}
