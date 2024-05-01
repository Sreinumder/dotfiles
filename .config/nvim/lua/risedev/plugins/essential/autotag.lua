-- ┌────────────────────────────────────────────┐
-- │automatically sets html tags like <t1> </t1>│
-- └────────────────────────────────────────────┘
return {
	"windwp/nvim-ts-autotag",
	-- event = { "InsertEnter" },
	ft = { "html", "xml" },
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
