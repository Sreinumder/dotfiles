-- inconsistency as it does not work with diw ciw thing
return {
  "chrisgrieser/nvim-spider", 
  lazy = true,
  keys = {
		{
			"w",
			"<cmd>lua require('spider').motion('w')<CR>",
			mode = { "n", "o", "x" },
		},
		{
			"b",
			"<cmd>lua require('spider').motion('b')<CR>",
			mode = { "n", "o", "x" },
		},
		{
			"e",
			"<cmd>lua require('spider').motion('e')<CR>",
			mode = { "n", "o", "x" },
		},
		{
			"ge",
			"<cmd>lua require('spider').motion('ge')<CR>",
			mode = { "n", "o", "x" },
		},
	},
}
