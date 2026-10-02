
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

-- vim.key
vim.keymap.set("n", "<leader>n", "<cmd>lua vim.diagnostic.jump({count = 1})<cr>", { desc = "Go to next Error" })
