vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("mariasolos/yank_highlight", { clear = true }),
	desc = "Highlight on yank",
	callback = function()
		-- Setting a priority higher than the LSP references one.
		vim.highlight.on_yank({ higroup = "Visual", priority = 250 })
	end,
})

vim.api.nvim_create_autocmd("CmdwinEnter", {
	group = vim.api.nvim_create_augroup("mariasolos/execute_cmd_and_stay", { clear = true }),
	desc = "Execute command and stay in the command-line window",
	callback = function(args)
		vim.keymap.set({ "n", "i" }, "<S-CR>", "<cr>q:", { buffer = args.buf })
	end,
})
