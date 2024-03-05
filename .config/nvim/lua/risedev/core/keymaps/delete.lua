local keymap = vim.keymap -- for conciseness

-- delete with x d or D and cut with alt + x + d + D
keymap.set({'n','v'}, "x", '"_x')
keymap.set({'n','v'}, "d", '"_d')
keymap.set({'n','v'}, "D", '"_D')
keymap.set({'n','v'}, "c", '"_c')
keymap.set({'n','v'}, "<A-d>", 'd')
keymap.set({'n','v'}, "<A-d><A-d>", 'dd')
keymap.set({'n','v'}, "<A-D>", 'D')
keymap.set({'n','v'}, "<A-c>", 'c')
keymap.set({'n','v'}, "<A-c><A-c>", 'cc')
keymap.set({'n'}, "dH", '"_d^', {desc = "same as d^"})
keymap.set({'n'}, "dL", '"_d$', {desc = "same as d$"})
