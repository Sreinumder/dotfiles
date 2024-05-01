local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- now mini.move does it better
-- clone sentences up and down
keymap.set("n", "<A-K>", 'V"by"bgpgv', { desc = "clone line Up(n)" })
keymap.set("n", "<A-J>", 'V"by"bPgv', { desc = "clone line Down(n)" })
keymap.set("v", "<A-K>", '"by"bgpgv', { desc = "clone line Up(v)" })
keymap.set("v", "<A-J>", '"by"bPgv', { desc = "clone line Down(v)" })

-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
	expr = true,
	desc = "insert line below",
})
keymap.set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
	expr = true,
	desc = "insert line above",
})

keymap.set("n", "<leader>j", "*``cgn", { desc = "replace word" })

-- -- Save your finger
-- keymap.set({ "n", "x" }, ";", ":")

-- Shortcut for faster save and quit
keymap.set("n", "<leader>w", "<cmd>update<cr>", { silent = true, desc = "save buffer" })

-- Saves the file if modified and quit
keymap.set("n", "<leader>q", "<cmd>x<cr>", { silent = true, desc = "quit current window" })

-- Quit all opened buffers
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" })

-- Navigation in the location and quickfix list
keymap.set("n", "[l", "<cmd>lprevious<cr>zv", { silent = true, desc = "previous location item" })
keymap.set("n", "]l", "<cmd>lnext<cr>zv", { silent = true, desc = "next location item" })

keymap.set("n", "[L", "<cmd>lfirst<cr>zv", { silent = true, desc = "first location item" })
keymap.set("n", "]L", "<cmd>llast<cr>zv", { silent = true, desc = "last location item" })

keymap.set("n", "[q", "<cmd>cprevious<cr>zv", { silent = true, desc = "previous qf item" })
keymap.set("n", "]q", "<cmd>cnext<cr>zv", { silent = true, desc = "next qf item" })

keymap.set("n", "[Q", "<cmd>cfirst<cr>zv", { silent = true, desc = "first qf item" })
keymap.set("n", "]Q", "<cmd>clast<cr>zv", { silent = true, desc = "last qf item" })
