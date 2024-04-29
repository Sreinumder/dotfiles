-- mappings = {
--    -- Main textobject prefixes
--    around = 'a',
--    inside = 'i',
--
--    -- Next/last variants
--    around_next = 'an',
--    inside_next = 'in',
--    around_last = 'al',
--    inside_last = 'il',
--
--    -- Move cursor to corresponding edge of `a` textobject
--    goto_left = 'g[',
--    goto_right = 'g]',
--  },

-- |Key|     Name      |   Example line   |
-- |---|---------------|-1234567890123456-|
-- | ( |  Balanced ()  | (( *a (bb) ))    |
-- | [ |  Balanced []  | [[ *a [bb] ]]    |
-- | { |  Balanced {}  | {{ *a {bb} }}    |
-- | < |  Balanced <>  | << *a <bb> >>    |
-- |---|---------------|-1234567890123456-|
-- | ) |  Balanced ()  | (( *a (bb) ))    |
-- | ] |  Balanced []  | [[ *a [bb] ]]    |
-- | } |  Balanced {}  | {{ *a {bb} }}    |
-- | > |  Balanced <>  | << *a <bb> >>    |
-- | b |  Alias for    | [( *a {bb} )]    |
-- |   |  ), ], or }   |                  |
-- |---|---------------|-1234567890123456-|
-- | " |  Balanced "   | "*a" " bb "      |
-- | ' |  Balanced '   | '*a' ' bb '      |
-- | ` |  Balanced `   | `*a` ` bb `      |
-- | q |  Alias for    | '*a' " bb "      |
-- |   |  ", ', or `   |                  |
-- |---|---------------|-1234567890123456-|
-- | ? |  User prompt  | e*e o e o o      |
-- |   |(typed e and o)|                  |
-- |---|---------------|-1234567890123456-|
-- | t |      Tag      | <x><y>*a</y></x> |
-- |---|---------------|-1234567890123456-|
-- | f | Function call | f(a, g(*b, c) )  |
-- |---|---------------|-1234567890123456-|
-- | a |   Argument    | f(*a, g(b, c) )  |
-- |---|---------------|-1234567890123456-|
-- |   |    Default    |                  |
-- |   |   (digits,    | aa_*b__cc___     |
-- |   | punctuation,  | (example for _)  |
-- |   | or whitespace)|                  |
-- |---|---------------|-1234567890123456-|
return{
  'echasnovski/mini.ai',
  version = '*',
  config = function()
    require('mini.ai').setup()
  end,
}
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "python",
          "prisma",
          "markdown",
          "markdown_inline",
          "svelte",
          "graphql",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "query",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })

      -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
      -- require('ts_context_commentstring').setup {}
    end,
}
return {
    'Wansmer/treesj',
    keys = { '<space>m' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
        require('treesj').setup({--[[ your config ]]})
    end,
}
return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    vim.keymap.set("n", "[c", function() require("treesitter-context").go_to_context(vim.v.count1) end, { silent = true })
  end,
}
--  ┌─────────────────────────────────────────────────────┐
--  │ introduces custom textboxes like gc for comments    │
--  │ i for indentation, key/value for k/v                │
--  │                                                     │
--  │                                                     │
--  └─────────────────────────────────────────────────────┘
return {
	"chrisgrieser/nvim-various-textobjs",
	lazy = false,
	opts = { useDefaultKeymaps = true },
	keys = {
		{ "ii", "<cmd>lua require('various-textobjs').indentation('inner', 'inner')<CR>", mode = { "o", "x" } },
		{ "ai", "<cmd>lua require('various-textobjs').indentation('outer', 'inner')<CR>", mode = { "o", "x" } },
		{ "iI", "<cmd>lua require('various-textobjs').indentation('inner', 'inner')<CR>", mode = { "o", "x" } },
		{ "aI", "<cmd>lua require('various-textobjs').indentation('outer', 'outer')<CR>", mode = { "o", "x" } },

		{ "ir", "<cmd>lua require('various-textobjs').restOfIndentation()<CR>", mode = { "o", "x" } },
		{ "ig", "<cmd>lua require('various-textobjs').greedyOuterIndentation('inner')<CR>", mode = { "o", "x" } },
		{ "ag", "<cmd>lua require('various-textobjs').greedyOuterIndentation('outer')<CR>", mode = { "o", "x" } },

		{ "iS", "<cmd>lua require('various-textobjs').subword('inner')<CR>", mode = { "o", "x" } },
		{ "aS", "<cmd>lua require('various-textobjs').subword('outer')<CR>", mode = { "o", "x" } },

		-- {"C", "<cmd>lua require('various-textobjs').toNextClosingBracket()<CR>", mode = { "o", "x" }},
		-- {"Q", "<cmd>lua require('various-textobjs').toNextQuotationMark()<CR>", mode = { "o", "x" }},
		{ "R", "<cmd>lua require('various-textobjs').restOfParagraph()<CR>", mode = { "o", "x" } },
		{ "gG", "<cmd>lua require('various-textobjs').entireBuffer()<CR>", mode = { "o", "x" } },
		-- {"n", "<cmd>lua require('various-textobjs').nearEoL()<CR>", mode = { "o", "x" }},
		{ "ih", "<cmd>lua require('various-textobjs').lineCharacterwise('inner')<CR>", mode = { "o", "x" } },
		{ "ah", "<cmd>lua require('various-textobjs').lineCharacterwise('outer')<CR>", mode = { "o", "x" } },

		{ "ij", "<cmd>lua require('various-textobjs').column()<CR>", mode = { "o", "x" } },

		{ "iv", "<cmd>lua require('various-textobjs').value('inner')<CR>", mode = { "o", "x" } },
		{ "av", "<cmd>lua require('various-textobjs').value('outer')<CR>", mode = { "o", "x" } },
		{ "ik", "<cmd>lua require('various-textobjs').key('inner')<CR>", mode = { "o", "x" } },
		{ "ak", "<cmd>lua require('various-textobjs').key('outer')<CR>", mode = { "o", "x" } },

		{ "U", "<cmd>lua require('various-textobjs').url()<CR>", mode = { "o", "x" } },
		{ "ib", "<cmd>lua require('various-textobjs').number('inner')<CR>", mode = { "o", "x" } },
		{ "ab", "<cmd>lua require('various-textobjs').number('outer')<CR>", mode = { "o", "x" } },

		{ "!", "<cmd>lua require('various-textobjs').diagnostic()<CR>", mode = { "o", "x" } },

		{ "iz", "<cmd>lua require('various-textobjs').closedFold('inner')<CR>", mode = { "o", "x" } },
		{ "az", "<cmd>lua require('various-textobjs').closedFold('outer')<CR>", mode = { "o", "x" } },

		{ "im", "<cmd>lua require('various-textobjs').chainMember('inner')<CR>", mode = { "o", "x" } },
		{ "am", "<cmd>lua require('various-textobjs').chainMember('outer')<CR>", mode = { "o", "x" } },

		{ "JK", "<cmd>lua require('various-textobjs').visibleInWindow()<CR>", mode = { "o", "x" } },
		{ "gW", "<cmd>lua require('various-textobjs').restOfWindow()<CR>", mode = { "o", "x" } },

		{
			"iL",
			"<cmd>lua require('various-textobjs').mdlink('inner')<CR>",
			mode = { "o", "x" },
			ft = { "markdown", "toml" },
		},
		{
			"aL",
			"<cmd>lua require('various-textobjs').mdlink('outer')<CR>",
			mode = { "o", "x" },
			ft = { "markdown", "toml" },
		},

		{
			"iC",
			"<cmd>lua require('various-textobjs').mdFencedCodeBlock('inner')<CR>",
			mode = { "o", "x" },
			ft = { "markdown" },
		},
		{
			"aC",
			"<cmd>lua require('various-textobjs').mdFencedCodeBlock('outer')<CR>",
			mode = { "o", "x" },
			ft = { "markdown" },
		},

		{
			"ic",
			"<cmd>lua require('various-textobjs').cssSelector('inner')<CR>",
			mode = { "o", "x" },
			ft = { "css", "scss" },
		},
		{
			"ac",
			"<cmd>lua require('various-textobjs').cssSelector('outer')<CR>",
			mode = { "o", "x" },
			ft = { "css", "scss" },
		},

		{
			"ix",
			"<cmd>lua require('various-textobjs').htmlAttribute('inner')<CR>",
			mode = { "o", "x" },
			ft = { "css", "scss", "html", "xml", "vue" },
		},
		{
			"ax",
			"<cmd>lua require('various-textobjs').htmlAttribute('outer')<CR>",
			mode = { "o", "x" },
			ft = { "css", "scss", "html", "xml", "vue" },
		},

		{
			"iD",
			"<cmd>lua require('various-textobjs').doubleSquareBrackets('inner')<CR>",
			mode = { "o", "x" },
			ft = { "lua", "norg", "sh", "fish", "zsh", "bash", "markdown" },
		},
		{
			"aD",
			"<cmd>lua require('various-textobjs').doubleSquareBrackets('outer')<CR>",
			mode = { "o", "x" },
			ft = { "lua", "norg", "sh", "fish", "zsh", "bash", "markdown" },
		},

		{
			"iP",
			"<cmd>lua require('various-textobjs').shellPipe('inner')<CR>",
			mode = { "o", "x" },
			ft = { "sh", "bash", "zsh", "fish" },
		},
		{
			"aP",
			"<cmd>lua require('various-textobjs').shellPipe('outer')<CR>",
			mode = { "o", "x" },
			ft = { "sh", "bash", "zsh", "fish" },
		},
	},
	config = function()
		require("various-textobjs").setup({
			lookForwardSmall = 5,
			lookForwardBig = 15,
			useDefaultKeymaps = false,
			disabledKeymaps = { "L" },
		})
		vim.keymap.set("n", "dsi", function()
			require("various-textobjs").indentation("outer", "outer")
			local indentationFound = vim.fn.mode():find("V")
			if not indentationFound then
				return
			end
			vim.cmd.normal({ "<", bang = true })
			local endBorderLn = vim.api.nvim_buf_get_mark(0, ">")[1]
			local startBorderLn = vim.api.nvim_buf_get_mark(0, "<")[1]
			vim.cmd(tostring(endBorderLn) .. " delete")
			vim.cmd(tostring(startBorderLn) .. " delete")
		end, { desc = "Delete Surrounding Indentation" })
	end,
}
