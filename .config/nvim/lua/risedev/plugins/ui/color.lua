--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘
return {
	{
		"Sreinumder/everforest-nvim",
    events = "VeryLazy",
		config = function()
      vim.cmd([[colorscheme everforest]])
      -- vim.cmd([[colorscheme forestbones]])
			-- vim.cmd.colorscheme("ice-cave")
			-- vim.cmd([[colorscheme catppuccin]])
			-- vim.cmd([[colorscheme nord]])
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
    -- { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
    -- { "catppuccin/nvim", name = "catppuccin" },
    -- { "mcchrish/zenbones.nvim", name = "zenbones", dependencies = "rktjmp/lush.nvim" },
    -- { "folke/tokyonight.nvim", name = "tokyonight" },
    -- { "rebelot/kanagawa.nvim", name = "kanagawa" },
    -- { "bluz71/vim-nightfly-guicolors", name = "nightfly" },
    -- { "ntk148v/komau.vim", name = "komau" },
    -- { "mcauley-penney/ice-cave.nvim", name = "ice-cave" },{{}}
    -- { "nyoom-engineering/oxocarbon.nvim",name="oxocarbon"},
    -- { "bluz71/vim-moonfly-colors", name = "moonfly" },
    -- { "jaredgorski/fogbell.vim", name = "fogbell" },
    -- { "reedes/vim-colors-pencil", name = "colors-pencil" },
    -- { "olivercederborg/poimandres.nvim", name = "poimandres" },
    -- { "rose-pine/neovim", name = "rose-pine" }
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
