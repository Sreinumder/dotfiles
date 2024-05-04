return {
	"uga-rosa/ccc.nvim",
  -- events = "BufEnter",
  ft = {"html", "css", "js", "config", "conf"},
  keys = {
    {
      "<leader>ccp",
      ":CccPick<CR>",
      {desc = "ccc pick"}
    },
    {
      "<leader>c<C-a>",
      ":CccConvert<CR>",
      {desc = "ccc convert"}
    },
    {
      "<leader>,cc",
      ":CccHighlighterToggle<CR>",
      {desc = "ccc toggle"}
    },
  },
	opts = {
		highlighter = {
			auto_enable = true,
			lsp = true,
		},
	},
}
-- #11aa7766
-- #f3aa72
