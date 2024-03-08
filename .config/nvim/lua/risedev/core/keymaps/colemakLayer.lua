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

keymap.set({'i', 'c', 't'}, "q", "q", {desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "w", "w", {desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "e", "f",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "r", "p",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "t", "b",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "y", "j",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "u", "l",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "i", "u",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "o", "y",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "p", ";",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "a", "a",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "s", "r",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "d", "s",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "f", "t",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "g", "g",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "h", "m",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "j", "n",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "k", "e",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "l", "i",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, ";", "o",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "z", "x",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "x", "c",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "c", "d",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "v", "v",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "b", "z",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "n", "k",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "m", "h",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "Q", "Q",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "W", "W",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "E", "F",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "R", "P",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "T", "B",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "Y", "J",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "U", "L",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "I", "U",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "O", "Y",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "P", ":",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "A", "A",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "S", "R",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "D", "S",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "F", "T",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "G", "G",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "H", "M",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "J", "N",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "K", "E",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "L", "I",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, ":", "O",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "Z", "X",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "X", "C",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "C", "D",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "V", "V",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "B", "Z",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "N", "K",{desc = "colemak-dh"})
keymap.set({'i', 'c', 't'}, "M", "H",{desc = "colemak-dh"})
