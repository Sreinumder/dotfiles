return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "git", -- also try out "git_branch"
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>oi", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<leader>oo", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<leader>oj", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
		{ "<leader>ok", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
		{ "<leader>o1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
		{ "<leader>o2", "<cmd>Grapple select index=2<cr>", desc = "Select first tag" },
		{ "<leader>o3", "<cmd>Grapple select index=3<cr>", desc = "Select first tag" },
		{ "<leader>o4", "<cmd>Grapple select index=4<cr>", desc = "Select first tag" },
		{ "<leader>o5", "<cmd>Grapple select index=5<cr>", desc = "Select first tag" },
	},
}
