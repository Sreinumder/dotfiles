return {
	"gbprod/substitute.nvim",
	opts = {},
	events = { "BufEnter" },
	keys = {
		{ "s", function() require("substitute").operator end, { noremap = true } },
		{ "ss", require("substitute").line, { noremap = true } },
		{ "S", require("substitute").eol, { noremap = true } },
		{ "s", require("substitute").visual, { noremap = true }, mode = { "x" } },
		{ "<A-s>", require("substitute.exchange").operator, { noremap = true } },
		{ "<A-s><A-s>", require("substitute.exchange").line, { noremap = true } },
		{ "<A-s>", require("substitute.exchange").visual, { noremap = true }, mode = { "x" } },
		{ "<A-s>c", require("substitute.exchange").cancel, { noremap = true } },
		{ "<A-S>s", require("substitute.range").operator, { noremap = true } },
		{ "<A-S>s", require("substitute.range").visual, { noremap = true }, mode = { "x" } },
		{ "<A-S>sr", require("substitute.range").word, { noremap = true } },
	},
  opts = {}
		-- vim.keymap.set("n", "<leader>h",require('substitute.exchange').operator, )
		-- vim.keymap.set("n", "<A-g>l", "€üsiww.", {desc=""})
}
