return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"fdschmidt93/telescope-egrepify.nvim",
		{ "2kabhishek/nerdy.nvim"},
    "folke/todo-comments.nvim",
    { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
    { "folke/tokyonight.nvim", name = "tokyonight" },
    { "catppuccin/nvim", name = "catppuccin" },
    { "rebelot/kanagawa.nvim", name = "kanagawa" },
    { "bluz71/vim-nightfly-guicolors", name = "nightfly" },
    { "kepano/flexoki", name = "flexoki" },
    { "mcchrish/zenbones.nvim", name = "zenbones", dependencies = "rktjmp/lush.nvim" },
    { "ntk148v/komau.vim", name = "komau" },
    { "mcauley-penney/ice-cave.nvim", name = "ice-cave" },
    { "shaunsingh/nord.nvim", name = "nord" },
    -- { "nyoom-engineering/oxocarbon.nvim",name="oxocarbon"},
    { "bluz71/vim-moonfly-colors", name = "moonfly" },
    { "robertmeta/nofrils", name = "nofrills" },
    { "jaredgorski/fogbell.vim", name = "fogbell" },
    { "reedes/vim-colors-pencil", name = "colors-pencil" },
    { "t184256/vim-boring", name = "boring" },
    { "olivercederborg/poimandres.nvim", name = "poimandres" },
	},
    -- { "princejoogie/dir-telescope.nvim"},
	keys = {
		{"<leader>ss", "<cmd>Telescope buffers<cr>",       { desc = " buffers" } },
		{"<leader>sj", "<cmd>Telescope find_files<cr>",    { desc = " files in cwd" } },
    {"<leader>sf", "<cmd>Telescope oldfiles<cr>",      { desc = " old files" } },
		{"<leader>sa", "<cmd>Telescope find_files search_dirs=~<cr>",{desc = " files in ~" } },
		{"<leader>sn", "<cmd>Telescope find_files search_dirs=~/notes<cr>",{desc = " files in notes" } },
		{"<leader>se", "<cmd>Telescope egrepify<cr>",      { desc = " egrepify" } },
		{"<leader>sk", "<cmd>Telescope keymaps<cr>",       { desc = " keymaps" } },
		{"<leader>sc", "<cmd>Telescope colorscheme<cr>",   { desc = " colorscheme" } },
		{"<leader>su", "<cmd>Telescope nerdy<cr>",         { desc = " dev-icon" } },
    {"<leader>sr", "<cmd>Telescope resume<cr>", { desc = " resume" } },
    {"<leader>sh", "<cmd>Telescope help_tags<cr>",     { desc = " help tags"}},
    { "<leader>st", ":TodoTelescope<CR>", {desc = " TODO"}, },
    { "<leader>sqt", ":TodoQuickFix<CR>", {desc = "quickfix TODO"}, },
    -- {"<leader><leader>jd", "<cmd>Telescope dir live_grep<CR>", { desc = " dir live_grep"}},
    -- {"<leader><leader>jh", "<cmd>Telescope dir find_files<CR>", { desc = " dir files"}},
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
			picks = {
				colorscheme = {
					enable_preview = true,
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("egrepify")
		telescope.load_extension("nerdy")
		-- telescope.load_extension("dir")
		-- telescope.load_extension("smart_open")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>fu", "cmdsilent! %foldopen! | UndotreeToggle", { desc = "undotree" })
	end,
}
