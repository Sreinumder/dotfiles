return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"fdschmidt93/telescope-egrepify.nvim",
		{ "2kabhishek/nerdy.nvim", cmd = "Nerdy" },
	},
	keys = {
		{"<leader>fs", "<cmd>Telescope buffers<cr>",       { desc = " buffers" } },
		{"<leader>ff", "<cmd>Telescope find_files<cr>",    { desc = " files in cwd" } },
    {"<leader>fj", "<cmd>Telescope oldfiles<cr>",      { desc = " old files" } },
		{"<leader>fe", "<cmd>Telescope egrepify<cr>",      { desc = " egrepify" } },
		{"<leader>fk", "<cmd>Telescope keymaps<cr>",       { desc = " keymaps" } },
		{"<leader>fc", "<cmd>Telescope colorscheme<cr>",   { desc = " colorscheme" } },
		{"<leader>fu", "<cmd>Telescope nerdy<cr>",         { desc = " dev-icon" } },
    {"<leader>f<leader>", "<cmd>Telescope resume<cr>", { desc = " resume" } },
    {"<leader>fh", "<cmd>Telescope help_tags<cr>",     { desc = " help tags"}}
    -- { "<leader>fl", "<cmd>Telescope live_grep<cr>  ", { desc = " live-grep  " } },
    -- { "<leader>ft", "<cmd>Telescope grep_string<cr>", { desc = " grep_string" } },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<A-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
						["<A-j>"] = require("telescope.actions").move_selection_next, -- move to next result
						["<A-l>"] = require("telescope.actions").send_selected_to_qflist + actions.open_qflist,
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
		telescope.load_extension("nerdy")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>fu", "cmdsilent! %foldopen! | UndotreeToggle", { desc = "undotree" })
	end,
}
