-- ┌─────────────────────────────────┐
-- │   jumps to the file at last   │
-- │   place when saved              │
-- └─────────────────────────────────┘
return {
	"ethanholz/nvim-lastplace",
	config = function()
		require("nvim-lastplace").setup()
	end,
}
