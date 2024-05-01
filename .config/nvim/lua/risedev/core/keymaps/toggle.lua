vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap

keymap.set("n", "<leader>,n", ":set number!<CR>", { desc = "Toggle number" })
keymap.set("n", "<leader>,r", ":set relativenumber!<CR>", { desc = "Toggle relative number" })
keymap.set("n", "<leader>,w", ":set wrap!<CR>", { desc = "Toggle wrap" })
keymap.set("n", "<leader>,s", ":set spell!<CR>", { desc = "Toggle spell" })
keymap.set("n", "<leader>,c", ":set cursorline!<CR>", { desc = "Toggle cursorline" })
keymap.set("n", "<leader>,i", ":set list!<CR>", { desc = "Toggle invisible char" })

-- - [ ] 1 Ubuntu.
-- - [ ] 2 GCC.
-- - [ ] 3 Docker.
-- - [ ] 4 Ubuntu.
-- - [ ] 5 GCC.
-- - [ ] 6 Docker.
-- - [ ] 7 Ubuntu.
-- - [ ] 8 GCC.
-- - [ ] 9 Docker.
-- - [ ] 10 Ubuntu.
