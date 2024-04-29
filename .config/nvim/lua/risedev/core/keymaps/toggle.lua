vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap

keymap.set("n", "<leader>Nn", ":set number!<CR>", { desc = "Toggle number" })
keymap.set("n", "<leader>NN", ":set relativenumber!<CR>", { desc = "Toggle relative number" })

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