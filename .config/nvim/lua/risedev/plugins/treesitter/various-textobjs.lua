return {
	"chrisgrieser/nvim-various-textobjs",
	lazy = false,
	opts = { useDefaultKeymaps = true },
	config = function()
		require("various-textobjs").setup({
			lookForwardSmall = 5,
			lookForwardBig = 15,
			useDefaultKeymaps = false,
			disabledKeymaps = { "L" },
		})
	end,
}
