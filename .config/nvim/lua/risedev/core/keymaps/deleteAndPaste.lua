local keymap = vim.keymap -- for conciseness

-- delete with x d or D and cut with alt + x + d + D
keymap.set({'n','v','x'}, "x", '"_x')
keymap.set({'n','v','x'}, "X", '"_X')
keymap.set({'n','v','x'}, "d", '"_d')
keymap.set({'n','v','x'}, "D", '"_D')
keymap.set({'n','v','x'}, "c", '"_c')

-- keymap.set({'n','v','x'}, "<A-x>", 'x')
-- keymap.set({'n','v','x'}, "<A-X>", 'X')
keymap.set({'n','v','x'}, "<A-d>", 'd')
keymap.set({'n','v','x'}, "<A-d><A-d>", 'dd')
keymap.set({'n','v','x'}, "<A-D>", 'D')
keymap.set({'n','v','x'}, "<A-c>", 'c')
keymap.set({'n','v','x'}, "<A-c><A-c>", 'cc')
-- keymap.set({'n'}, "<A-D>", '"_d^', {desc = "same as d^"})
-- keymap.set({'n'}, "dL", '"_d$', {desc = "same as d$"})

-- deletes without letting the *selection* overwriting the contents of default register
keymap.set({'v', 'x'}, 'p', '"_dp')
keymap.set({'v', 'x'}, '<A-p>', 'p')
keymap.set({'v', 'x'}, 'P', '"_dP')
keymap.set({'v', 'x'}, '<A-P>', 'P')

-- like gv for last paste
keymap.set({'n'}, '<A-g><A-v>', '`[v`]')
keymap.set({'n'}, '<A-g>v>', '`[v`]')
