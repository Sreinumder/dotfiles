vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap -- for conciseness

-- keymap.set('i', "<A-h>", "<C-o>h", {desc = "same as ^"})
-- keymap.set('i', "<A-j>", "<C-o>j", {desc = "same as ^"})
-- keymap.set('i', "<A-k>", "<C-o>k", {desc = "same as ^"})
-- keymap.set('i', "<A-l>", "<C-o>l", {desc = "same as ^"})

keymap.set("i", "<A-h>", "<Left>", { desc = "Insert mode left" })
keymap.set("i", "<A-j>", "<Down>", { desc = "Insert mode down" })
keymap.set("i", "<A-k>", "<Up>", { desc = "Insert mode up" })
keymap.set("i", "<A-l>", "<Right>", { desc = "Insert mode Right" })

keymap.set("i", "<A-H>", "<C-Left>", { desc = "Insert mode left" })
keymap.set("i", "<A-J>", "<C-Down>", { desc = "Insert mode down" })
keymap.set("i", "<A-K>", "<C-Up>", { desc = "Insert mode up" })
keymap.set("i", "<A-L>", "<C-Right>", { desc = "Insert mode Right" })

keymap.set("i", "<A-n>", "<esc>wwct,", { desc = "change next csv" })
keymap.set("i", "<A-N>", "<esc>bbcT, ", { desc = "change inside next csv surrounded by ?" })

-- CTRL-O h  move cursor left CTRL-O l  move cursor right
-- CTRL-O j  move cursor down
-- CTRL-O k  move cursor up
-- CTRL-W    delete word to the left of cursor
-- CTRL-O D  delete everything tohh the right of cursor
-- CTRL-U    delete everything to the left of cursor
-- CTRL-H    backspace/delete
-- CTRL-J    insert newline (easier than reaching for the return key
-- CTRL-T    indent current line
-- CTRL-D    un-indent current line
