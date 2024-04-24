return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.keymap.set("n", "<leader>f/", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
		vim.keymap.set("n", "<leader>fc", "<cmd>lua require('fzf-lua').colorschemes()<CR>", { silent = true })
		vim.keymap.set("n", "<leader>fb", "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })
		-- vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').git()<CR>", { silent = true })
	end,
}
