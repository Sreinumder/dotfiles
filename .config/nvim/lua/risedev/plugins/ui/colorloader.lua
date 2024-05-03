--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘
local spec = {
	{ "sainnhe/everforest",              name = "everforest"},
  { "ellisonleao/gruvbox.nvim",        name="gruvbox"},
  { "folke/tokyonight.nvim",           name="tokyonight"},
  { "catppuccin/nvim",                 name="catppuccin"},
  { "rebelot/kanagawa.nvim",           name="kanagawa"},
  { "bluz71/vim-nightfly-guicolors",   name="nightfly"},
  { "kepano/flexoki",                  name="flexoki"},
  { "mcchrish/zenbones.nvim",          name="zenbones", dependencies = "rktjmp/lush.nvim"},
  { "ntk148v/komau.vim",               name="komau"},
	{ "mcauley-penney/ice-cave.nvim",    name="ice-cave"},
	{ "shaunsingh/nord.nvim",            name="nord"},
	-- { "nyoom-engineering/oxocarbon.nvim",name="oxocarbon"},
	{ "bluz71/vim-moonfly-colors",       name="moonfly"},
	{ "robertmeta/nofrils",              name="nofrills"},
	{ "jaredgorski/fogbell.vim",         name="fogbell"},
	{ "reedes/vim-colors-pencil",        name="colors-pencil"},
	{ "t184256/vim-boring",              name="boring"},
	{ "olivercederborg/poimandres.nvim", name="poimandres"},
	-- { "chriskempson/base16-vim",         name="base16-vim"},
}

vim.keymap.set("n", "<leader>,lc", function() --> Show all custom colors in telescope...
	for _, color in ipairs(spec) do --> Load all colors in spec....
		vim.cmd("Lazy load " .. color.name) --> vim colorschemes cannot be required...
	end

	vim.schedule(function() --> Needs to be scheduled:
    -- stylua: ignore
    -- local builtins = { "zellner", "torte", "slate", "shine", "ron", "quiet", "peachpuff", "pablo", "murphy", "lunaperche", "koehler", "industry", "evening", "elflord", "desert", "delek", "default", "darkblue", "blue" }
    local builtins = {}
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
end, { desc = "load colorschemes", silent = true })

return spec
