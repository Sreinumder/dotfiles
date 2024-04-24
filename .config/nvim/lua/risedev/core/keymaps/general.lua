vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap -- for conciseness

keymap.set({ "n", "v" }, "j", "gj", { desc = "next text wrapped line" })
keymap.set({ "n", "v" }, "k", "gk", { desc = "prev text wrapped line" })

keymap.set({ "n", "v" }, "gj", "j", { desc = "next line" })
keymap.set({ "n", "v" }, "gk", "k", { desc = "prev line" })

keymap.set({ "n", "v", "o" }, "H", "^", { desc = "Start of line" })
keymap.set({ "n", "v", "o" }, "<A-M>", "gM", { desc = "Middle of Line" })
keymap.set({ "n", "v", "o" }, "L", "$", { desc = "End of Line" })
keymap.set({ "n", "v", "o" }, "K", "H", { desc = "Highest line of screen" })
keymap.set({ "n", "v", "o" }, "J", "L", { desc = "Lowest line of screen" })

keymap.set("n", "<A-H>", "J", { desc = "Default H" })
keymap.set("n", "<A-L>", "K", { desc = "Default K" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

-- keymap.set({'n','v'}, "<CR>", "A<CR><ESC>", {desc = ""})
-- keymap.set({'n','v'}, "<S-CR>", "I<CR><ESC>", {desc = ""})
