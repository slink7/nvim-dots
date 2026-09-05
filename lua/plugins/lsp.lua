
function f(e)
	return 5
end

f()

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
		end,
		keys = {
			{
				"<leader>gd",
				"<cmd>lua vim.lsp.buf.definition()<cr>",
				desc = "Go to definition"
			}, {
				"<leader>gD",
				"<cmd>lua vim.lsp.buf.declaration()<cr>",
				desc = "Go to declaration"
			}, {
				"<leader>K",
				"<cmd>lua vim.lsp.buf.hover()<cr>",
				desc = "Hover"
			}, {
				"<leader>E",
				"<cmd>lua vim.diagnostic.open_float()<cr>",
				desc = "Diagnostic"
			}
		}
	}
}
