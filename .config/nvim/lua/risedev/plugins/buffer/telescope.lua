return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"fdschmidt93/telescope-egrepify.nvim",
	},
	keys = {
		{ "<leader><leader>b", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find files in cwd" } },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" } },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" } },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" } },
		{ "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" } },
		{ "<leader>fe", "<cmd>Telescope egrepify<cr>", { desc = "Find string under cursor in cwd" } },
		{ "<leader>fr", "<cmd>Telescope resume<cr>", { desc = "Find string under cursor in cwd" } },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find string under cursor in cwd" } },
		{ "<leader>fu", "<cmd>Telescope colorscheme<cr>", { desc = "Find string under cursor in cwd" } },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
						["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
						["<C-q>"] = require("telescope.actions").send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("egrepify")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>fu", "cmdsilent! %foldopen! | UndotreeToggle", { desc = "undotree" })
	end,
}
