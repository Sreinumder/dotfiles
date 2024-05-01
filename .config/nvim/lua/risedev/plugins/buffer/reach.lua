return {
	"toppair/reach.nvim",
	keys = {
		{
			"<leader>rbr",
			function()
				require("reach").buffers(buffer_options)
			end,
			{ desc = "reach buffer" },
		},
	},
	config = function()
		require("reach").setup()
	end,
}
