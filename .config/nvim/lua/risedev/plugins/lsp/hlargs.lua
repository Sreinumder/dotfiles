--┌──────────────────────────────────────┐
--│Highlight arguments, definitions and  │
--│usages asynchronously using Treesitter│
--└──────────────────────────────────────┘

return {
	"m-demare/hlargs.nvim",
	opts = {},
  ft = {"c", "lua", "js", "cpp", "hpp", "h", "py", "go"},
	events = { "BufEnter" },
}
