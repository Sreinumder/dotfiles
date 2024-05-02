return {
	"toppair/reach.nvim",
	keys = {
		{
			"<leader>fr",
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

