vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap

keymap.set("n", "<leader>,nn", ":set number!<CR>", { desc = "Toggle number" })
keymap.set("n", "<leader>,nr", ":set relativenumber!<CR>", { desc = "Toggle relative number" })
keymap.set("n", "<leader>,w", ":set wrap!<CR>", { desc = "Toggle wrap" })
keymap.set("n", "<leader>,sp", ":set spell!<CR>", { desc = "Toggle spell" })
keymap.set("n", "<leader>,cl", ":set cursorline!<CR>", { desc = "Toggle cursorline" })
keymap.set("n", "<leader>,ii", ":set list!<CR>", { desc = "Toggle invisible char" })

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
