--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘
local spec = {
	-- {
	-- 	"sainnhe/everforest",
	-- 	name = "everforest",
	-- 	lazy = true,
	-- },
	{ "ntk148v/komau.vim", name = "komau", lazy = true },
	{ "mcauley-penney/ice-cave.nvim", name = "ice-cave", priority = 1000, lazy = true },
	{ "shaunsingh/nord.nvim", name = "nord", lazy = true },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		config = function()
			vim.print("setup catppuccin")
			require("catppuccin").setup({
				-- flavour = "latte",
				-- flavour = "frappe",
				flavour = "macchiato",
				-- flavour = "mocha",
			})
		end,
	},
	{ "bluz71/vim-nightfly-guicolors", name = "nightfly" },
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = true,
		config = function()
			vim.print("setup tokyo")
			require("tokyonight").setup({
				style = "storm",
			})
		end,
	},
}

vim.keymap.set("n", "<leader>fu", function() --> Show all custom colors in telescope...
	for _, color in ipairs(spec) do --> Load all colors in spec....
		vim.cmd("Lazy load " .. color.name) --> vim colorschemes cannot be required...
	end

	vim.schedule(function() --> Needs to be scheduled:
    -- stylua: ignore
    local builtins = { "zellner", "torte", "slate", "shine", "ron", "quiet", "peachpuff",
    "pablo", "murphy", "lunaperche", "koehler", "industry", "evening", "elflord",
    "desert", "delek", "default", "darkblue", "blue" }

		local completion = vim.fn.getcompletion
		---@diagnostic disable-next-line: duplicate-set-field
		vim.fn.getcompletion = function() --> override
			return vim.tbl_filter(function(color)
				return not vim.tbl_contains(builtins, color) --
			end, completion("", "color"))
		end

		-- vim.cmd("Telescope colorscheme enable_preview=true")
		vim.fn.getcompletion = completion --> restore
	end)
end, { desc = "Telescope custom colors", silent = true })

return spec
