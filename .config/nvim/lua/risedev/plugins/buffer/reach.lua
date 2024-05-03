return {
	"toppair/reach.nvim",
	keys = {
		{
			"<leader><leader>f",
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

