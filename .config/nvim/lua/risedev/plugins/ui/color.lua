--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘
return {
	{
		-- "Sreinumder/everforest-nvim",
		-- "neanias/everforest-nvim",
		"mcchrish/zenbones.nvim",
		name = "zenbones",
		dependencies = "rktjmp/lush.nvim",
		config = function()
      vim.cmd([[colorscheme forestbones]])
			-- vim.cmd([[colorscheme everforest]])
			-- vim.cmd.colorscheme("ice-cave")
			-- vim.cmd([[colorscheme catppuccin]])
			-- vim.cmd([[colorscheme nord]])
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
	-- {
	-- "mcauley-penney/ice-cave.nvim",
	-- priority = 1000,
	-- },
	-- {
	--   'shaunsingh/nord.nvim' ,
	-- },
	-- { "catppuccin/nvim",
	--   name = "catppuccin",
	--   config = function()
	--     require("catppuccin").setup({
	--       -- flavour = "latte",
	--       -- flavour = "frappe",
	--       -- flavour = "macchiato",
	--       -- flavour = "mocha",
	--     })
	--   end,
	-- },
	-- { "bluz71/vim-nightfly-guicolors",
	--   config = function()
	--     -- vim.cmd([[colorscheme nightfly]])
	--   end,
	-- },
	-- { "folke/tokyonight.nvim",
	--   config = function()
	--     require("tokyonight").setup({
	--       style = "storm",
	--     })
	--   end,
	-- },
}
