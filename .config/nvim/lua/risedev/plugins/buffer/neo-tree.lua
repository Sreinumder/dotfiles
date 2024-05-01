return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>ee", ":Neotree reveal<CR>", { desc = "NeoTree reveal" } },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>ee"] = "close_window",
					["h"] = "navigate_up",
					["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
				},
			},
		},
	},
}
