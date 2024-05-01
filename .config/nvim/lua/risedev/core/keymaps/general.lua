vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>L", ":Lazy<CR>", { desc = "next text wrapped line" })

keymap.set({ "n", "v" }, "j", "gj", { desc = "next text wrapped line" })
keymap.set({ "n", "v" }, "k", "gk", { desc = "prev text wrapped line" })

keymap.set({ "n", "v" }, "gj", "j", { desc = "next line" })
keymap.set({ "n", "v" }, "gk", "k", { desc = "prev line" })

keymap.set({ "n", "v", "o" }, "H", "^", { desc = "Start of line" })
keymap.set({ "n", "v", "o" }, "<A-M>", "gM", { desc = "Middle of Line" })
keymap.set({ "n", "v", "o" }, "L", "$", { desc = "End of Line" })
keymap.set("n", "<A-H>", "H", { desc = "Default H" })
keymap.set("n", "<A-L>", "L", { desc = "Default K" })

-- keymap.set({ "n", "v", "o" }, "K", "H", { desc = "Highest line of screen" })
-- keymap.set({ "n", "v", "o" }, "J", "L", { desc = "Lowest line of screen" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

-- keymap.set({'n','v'}, "<CR>", "A<CR><ESC>", {desc = ""})
-- keymap.set({'n','v'}, "<S-CR>", "I<CR><ESC>", {desc = ""})

-- Continuous visual shifting (does not exit Visual mode), `gv` means
-- to reselect previous visual area, see https://superuser.com/q/310417/736190
keymap.set("x", "<", "<gv")
keymap.set("x", ">", ">gv")

-- keymap.set("n", "<leader>sv", function() vim.cmd([[ update $MYVIMRC source $MYVIMRC ]])
-- 	vim.notify("Nvim config successfully reloaded!", vim.log.levels.INFO, { title = "nvim-config" })
-- end, {
-- 	silent = true,
-- 	desc = "reload init.lua",
-- })

-- Change current working directory locally and print cwd after that,
-- see https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>", { desc = "change cwd" })

-- Always use very magic mode for searching
keymap.set("n", "/", [[/\v]])

-- Use Esc to quit builtin terminal
keymap.set("t", "<Esc>", [[<c-\><c-n>]])

-- Toggle spell checking
-- keymap.set("n", "<F11>", "<cmd>set spell!<cr>", { desc = "toggle spell" })
-- keymap.set("i", "<F11>", "<c-o><cmd>set spell!<cr>", { desc = "toggle spell" })

-- check the syntax group of current cursor position
keymap.set("n", "<leader>st", "<cmd>call utils#SynGroup()<cr>", { desc = "check syntax group" })
