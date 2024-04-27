return {
	"ecthelionvi/NeoSwap.nvim",
	opts = {},
	config = function()
		vim.keymap.set("n", "gl", "<cmd>NeoSwapNext<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "gh", "<cmd>NeoSwapPrev<cr>", { noremap = true, silent = true })
	end,
}
-- am { I } just here writing a bunch of stuff.
