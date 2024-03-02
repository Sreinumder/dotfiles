-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ','
local keymap = vim.keymap -- for conciseness


   
-- text wrap navigation swap
keymap.set({'n','v'}, "j", "gj", {desc = "next text wrapped line"})
keymap.set({'n','v'}, "gj", "j", {desc = "next line"})
keymap.set({'n','v'}, "k", "gk", {desc = "prev text wrapped line"})
keymap.set({'n','v'}, "gk", "k", {desc = "prev line"})
keymap.set({'n','v'}, "H", "^", {desc = "same as ^"})
keymap.set({'n','v'}, "L", "$", {desc = "same as $"})
   

keymap.set({'n','v'}, "<CR>", "A<CR><ESC>", {desc = ""})
keymap.set({'n','v'}, "<S-CR>", "I<CR><ESC>", {desc = ""})

keymap.set('n', "<Leader>ee", function() vim.cmd("vsplit | wincmd l") require("oil").open() end, {desc = "oil file explorer"})

keymap.set('i', "<A-h>", "<Left>", {desc = "Left"})
keymap.set('i', "<A-j>", "<Down>", {desc = "Down"})
keymap.set('i', "<A-k>", "<Up>", {desc = "Up"})
keymap.set('i', "<A-l>", "<Right>", {desc = "Right"})
keymap.set('i', "<A-u>", "<Backspace>", {desc = "Left"})
keymap.set('i', "<A-i>", "<Down>", {desc = "Down"})
