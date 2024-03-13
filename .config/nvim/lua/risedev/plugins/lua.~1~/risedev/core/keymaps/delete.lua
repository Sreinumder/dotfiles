local keymap = vim.keymap -- for conciseness

-- delete with x d or D and cut with alt + x + d + D
keymap.set({'n','v','x'}, "x", '"_x')
keymap.set({'n','v','x'}, "d", '"_d')
keymap.set({'n','v','x'}, "D", '"_D')
keymap.set({'n','v','x'}, "c", '"_c')

keymap.set({'n','v','x'}, "<A-d>", 'd')
keymap.set({'n','v','x'}, "<A-d><A-d>", 'dd')
keymap.set({'n','v','x'}, "<A-D>", 'D')
keymap.set({'n','v','x'}, "<A-c>", 'c')
keymap.set({'n','v','x'}, "<A-c><A-c>", 'cc')
keymap.set({'n'}, "dH", '"_d^', {desc = "same as d^"})
keymap.set({'n'}, "dL", '"_d$', {desc = "same as d$"})
