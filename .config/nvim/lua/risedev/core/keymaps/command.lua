local keymap = vim.keymap
-- keymap.set({'n'}, "<A-m>", ":<Up>", {desc = "last command"})
-- keymap.set({'n'}, "<A-w>", ":lol", {desc = "last command"})

-- Go to beginning of command in command-line mode
keymap.set("c", "<C-A>", "<HOME>")
