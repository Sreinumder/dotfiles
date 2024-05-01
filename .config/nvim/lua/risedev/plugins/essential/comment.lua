--┌───────────────────┐
--│Line gcc Block  gbc│
--│End of line     gcA│
--│Line Above      gcO│
--│Line below      gco│
--└───────────────────┘

return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = true,
	lazy = true,
}
