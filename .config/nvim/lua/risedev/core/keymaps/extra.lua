local keymap = vim.keymap -- for conciseness

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- now mini.move does it better
-- moving sentences up and down
-- keymap.set("n", "<A-j>", ":m .+1<CR>==", {desc = "move line up(n)"})
-- keymap.set("n", "<A-k>", ":m .-2<CR>==", {desc = "move line down(n)"})
-- keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "move line up(v)"})
-- keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {desc = "move line down(v)"})
