local keymap = vim.keymap -- for conciseness

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- now mini.move does it better
-- clone sentences up and down
keymap.set("v", "<A-K>", '"by"bpgv', {desc =  "clone line Up(v)"})
keymap.set("v", "<A-J>", '"by"bPgv', {desc =  "clone line Down(v)"})
keymap.set("n", "<A-K>", 'V"by"bpgv', {desc = "clone line Up(n)"})
keymap.set("n", "<A-J>", 'V"by"bPgv', {desc = "clone line Down(n)"})
-- keymap.set("n", "<c-h>", '', {desc = "move line up(v)"})
-- clone clone clone clone clone efji  
-- keymap.set("s", )
-- keymap.set("v", "<A-l>", 'viw', {desc = "move line down(v)"})
-- rose rise

