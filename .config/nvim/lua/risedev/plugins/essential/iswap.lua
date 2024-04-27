return {
	"mizlan/iswap.nvim",
	event = "VeryLazy",
	config = function()
		vim.keymap.set("n", "<leader>gs", ":ISwap<CR>", { desc = "ISwap" })
	end,
}
-- [ bat, dena, arise, cat, ell]
