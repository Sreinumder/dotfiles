return {
	"echasnovski/mini.files",
	version = "*",
  keys = {
    {
      "<leader><leader>e",
      function()
        if not require("mini.files").close() then require("mini.files").open() end
      end,
      {desc = "mini files"}
    },
  },
	opts = {
		-- Customization of shown content
		content = {
			-- Predicate for which file system entries to show
			filter = nil,
			-- What prefix to show to the left of file system entry
			prefix = nil,
			-- In which order to show file system entries
			sort = nil,
		},

		-- Module mappings created only inside explorer.
		-- Use `''` (empty string) to not create one.
		mappings = {
			-- close = "q",
			close = "<esc>",
			-- close = "<leader>",
			go_in = "l",
			go_in_plus = "L",
			go_out = "h",
			go_out_plus = "H",
			reset = "<BS>",
			reveal_cwd = "@",
			show_help = "g?",
			synchronize = "=",
			trim_left = "<",
			trim_right = ">",
		},

		-- General options
		options = {
			permanent_delete = false,
			use_as_default_explorer = false,
		},

		-- Customization of explorer windows
		windows = {
			max_number = math.huge,
			preview = true,
			width_focus = 50,
			width_nofocus = 15,
			width_preview = 25,
		},
	},
  config = function()
    -- works on only nightly
    --   vim.api.nvim_create_autocmd('User', {
    --     pattern = 'MiniFilesWindowUpdate',
    --     callback = function(args) vim.wo[args.data.win_id].relativenumber = true end,
    --   })
  end,
}
