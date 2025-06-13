vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<tab>", ":bnext<cr>", { desc = "Navigate to the next buffer" })
-- vim.keymap.set('n', '<S-tab>', ':bprev<cr>', {desc='Navigate to the previous buffer'} )
vim.keymap.set("n", "<leader>q", ":bd<cr>", { desc = "Close buffer" })

vim.keymap.set("n", "-", "<cmd>Oil --float<cr>", { desc = "Open parent directory in Oil" })

vim.keymap.set("n", "<leader>pv", "<leader>e", {desc = "Explorer" })
vim.keymap.set("n", "<leader>cf", function() require("conform").format({ lsp_format = "fallback" }) end, {desc = "Conform format current file"})
