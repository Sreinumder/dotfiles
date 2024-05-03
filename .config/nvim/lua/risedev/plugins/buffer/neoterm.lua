return {
	"itmecho/neoterm.nvim",
	keys = { "<A-t>" },
	opts = {
		clear_on_run = true, -- run clear command before user specified commands
		mode = "fullscreen", -- vertical/horizontal/fullscreen
		noinsert = false, -- disable entering insert mode when opening the neoterm window
		vim.keymap.set({ "n", "c", "t" }, "<A-t><A-t>", "<cmd>NeotermToggle<CR>", { desc = "NeoTermToggle" }),
		vim.keymap.set("n", "<A-t><A-r>", ":NeotermRun<space>", { desc = "NeoTermToggle" }),
		vim.keymap.set("n", "<A-t><A-r><A-l>", ":NeotermRun<space>lazygit<CR>", { desc = "NeoTermToggle" }),
		vim.keymap.set("n", "<A-t><A-t><A-r>", "<cmd>NeotermRerun<CR>", { desc = "NeoTermToggle" }),
		vim.keymap.set("n", "<A-t><A-q>", "<cmd>NeotermExit<CR>", { desc = "NeoTermToggle" }),
	},
}
