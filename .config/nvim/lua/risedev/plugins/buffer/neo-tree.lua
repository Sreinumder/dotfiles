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
		{ "<leader>ee", ":Neotree toggle right<CR>", { desc = "NeoTree reveal" } },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>ee"] = "close_window",
					["h"] = "navigate_up",
					["l"] = "set_root",
					-- ["L"] = "open",
					["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
					["s"] = "split",
					["<A-l>"] = "focus_preview",
				},
			},
		},
	},
}
