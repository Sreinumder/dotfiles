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

-- Automatically reload the file if it is changed outside of Nvim, see https://unix.stackexchange.com/a/383044/221410.
-- It seems that `checktime` does not work in command line. We need to check if we are in command
-- line before executing this command, see also https://vi.stackexchange.com/a/20397/15292 .
api.nvim_create_augroup("auto_read", { clear = true })

-- Resize all windows when we resize the terminal
api.nvim_create_autocmd("VimResized", {
	group = api.nvim_create_augroup("win_autoresize", { clear = true }),
	desc = "autoresize windows on resizing operation",
	command = "wincmd =",
})

-- Disable sql omni completion, it is broken.
vim.g.loaded_sql_completion = 1
