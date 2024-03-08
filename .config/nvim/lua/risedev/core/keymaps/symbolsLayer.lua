-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ','
local keymap = vim.keymap -- for conciseness

-- qwerty layout  -> colemak-dh     ->  alt modifier
-- qwerty uiop    -> qwfpb jluy;    -> "[{(% ~)}]'
-- asdfg hjkl;    -> arstg mneio    -> +-|&^ hjkl=
--  zxcv bnm      ->  xcdv zkh      ->  $#!@ \_*

-- @[{(%`)}]' work in other [m]odes too
-- y for yeet to mark

-- symbols
-- pairs ({['"
-- arithmetic +-*^%=
-- logical |&^=
-- misc @/~`#$

keymap.set({'i', 'c', 't'}, "<A-q>", "\"", {desc = "colemak-dh"})-- not working
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-w>", "(", {desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<a-e>", "{",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-r>", "[",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-t>", "%",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-y>", "`",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-u>", "]",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-i>", "}",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n', 'v', 'x', 'o'}, "<A-o>", ")",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-p>", "'",{desc = "colemak-dh"}) -- not working

keymap.set({'i', 'c', 't'}, "<A-a>", "+",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-s>", "-",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-d>", "|",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-f>", "&",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-g>", "^",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-;>", "=",{desc = "colemak-dh"})

keymap.set({'i', 'c', 't'}, "<A-z>", "$",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-x>", "#",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-c>", "!",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't', 'n'}, "<A-v>", "@",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-b>", "\\",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-n>", "_",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "<A-m>", "*",{desc = "colemak-dh"})
