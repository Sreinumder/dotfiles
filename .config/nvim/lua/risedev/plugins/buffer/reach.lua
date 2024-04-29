return {
	"toppair/reach.nvim",
	config = function()
		require("reach").setup()
		vim.keymap.set("n", "<leader>rbr", function()
			require("reach").buffers(buffer_options)
		end, {})
	end,
}