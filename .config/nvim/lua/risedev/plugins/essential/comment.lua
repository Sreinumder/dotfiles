--┌───────────────────┐
--│Line gcc Block  gbc│
--│End of line     gcA│
--│Line Above      gcO│
--│Line below      gco│
--└───────────────────┘

return {
	"numToStr/Comment.nvim",
	-- event = { "BufReadPre", "BufNewFile" },
	keys = { { "gc", mode = { "v", "n" } } },
	opts = {},
	config = true,
	lazy = true,
}
