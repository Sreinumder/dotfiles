-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ','
local keymap = vim.keymap -- for conciseness

-- for colemak-dh usage
-- either run a script that changes the layout everytime entering insert mode not feasible if we need to use browser with colemak-dh anyway we relearn all keybinds with colemak-dh

-- hjkl
-- mnei

-- text wrap navigation swap
keymap.set({'n','v'}, "j", "gj", {desc = "next text wrapped line"})
keymap.set({'n','v'}, "gj", "j", {desc = "next line"})
keymap.set({'n','v'}, "k", "gk", {desc = "prev text wrapped line"})
keymap.set({'n','v'}, "gk", "k", {desc = "prev line"})
keymap.set({'n','v'}, "H", "^", {desc = "same as ^"})
keymap.set({'n','v'}, "L", "$", {desc = "same as $"})

keymap.set({'n','v'}, "<CR>", "A<CR><ESC>", {desc = ""})
keymap.set({'n','v'}, "<S-CR>", "I<CR><ESC>", {desc = ""})

-- keymap.set('n', "<Leader>ee", function() vim.cmd("vsplit | wincmd l") require("oil").open() end, {desc = "oil file explorer"})

keymap.set({'n','v'}, "<A-m>", "<Left>", {desc = "Left"})
keymap.set({'n','v'}, "<A-n>", "<Down>", {desc = "Down"})
keymap.set({'n','v'}, "<A-e>", "<Up>", {desc = "Up"})
keymap.set({'n','v'}, "<A-i>", "<Right>", {desc = "Right"})
keymap.set({'n','v'}, "<A-u>", "<Backspace>", {desc = "Left"})
