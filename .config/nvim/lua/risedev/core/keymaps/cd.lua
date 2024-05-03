vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>cdh", ":cd ..<CR>", { desc = "next text wrapped line" })
-- keymap.set("n", "<leader>df", ":cd %:p:h<CR>" , { desc = "next text wrapped line" })

-- Change current working directory locally and print cwd after that,
-- see https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
keymap.set("n", "<leader>cdf", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>", { desc = "change cwd" })

-- keymap.set("n", "<leader>cdh", ":cd ..", { desc = "next text wrapped line" })
-- /home/rise/.config/nvim/lua/risedev/core/keymaps
-- expand("%:p:h")
