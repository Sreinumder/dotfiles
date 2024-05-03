local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- clone sentences up and down
keymap.set("n", "<A-K>", 'V"by"bgpgv', { desc = "clone line Up(n)" })
keymap.set("n", "<A-J>", 'V"by"bPgv', { desc = "clone line Down(n)" })
keymap.set("v", "<A-K>", '"by"bgpgv', { desc = "clone selection Up(v)" })
keymap.set("v", "<A-J>", '"by"bPgv', { desc = "clone selection Down(v)" })

-- now mini.move does it better
keymap.set("v", "<A-w>", '"bdw"bp`[v`]',       { desc = "move selection with w" })
keymap.set("v", "<A-e>", '"bde"bp`[v`]',       { desc = "move selection with e" })
keymap.set("v", "<A-b>", '"bdb"bP`[v`]',       { desc = "move selection with b" })
keymap.set("v", "<A-W>", '"bdW"bp`[v`]',       { desc = "move selection with W" })
keymap.set("v", "<A-E>", '"bdE"bp`[v`]',       { desc = "move selection with e" })
keymap.set("v", "<A-B>", '"bdB"bP`[v`]',       { desc = "move selection with b" })
keymap.set("v", "<A-H>", '"bd^"bP`[v`]',       { desc = "move selection with H" })
keymap.set("v", "<A-L>", '"bd$"bp`[v`]',       { desc = "move selection with L" })
keymap.set("v", "<A-g><A-e>", '"bdge"bp`[v`]', { desc = "move selection with ge" })
keymap.set("v", "<A-g><A-g>", '"bdgg"bp`[v`]', { desc = "move selection with gg" })
keymap.set("v", "<A-G>", '"bdG"bp`[v`]',      { desc = "move selection with G" })

-- word this fix
-- keymap.set("v", "<A-E>", '"bdE"bp`[v`]', { desc = "move selection e" })

-- keymap.set("v", "<A-B>", '"bdB"bP`[v`]', { desc = "move selection b" })

-- operations in nvim
-- motions web WEB ge gg G w
-- primitive, yank(y), delete(d), cut(x), paste(p), visual-select(v), jump-to-marks(j)
-- combination:
-- substitute(s): xiw di()P
-- exchange(e): dpdjp
-- move: vdp --instant visual feedback
-- Insert a blank line below or above current line (do not move the cursor),
-- see https://stackoverflow.com/a/16136133/6064933
keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
	expr = true,
	desc = "insert line below",
})
keymap.set("n", "<space>O", "printf('m`%sO<ESC>``', v:count1)", {
	expr = true,
	desc = "insert line above",
})

keymap.set("n", "<leader>j", "*``cgn", { desc = "replace word" })

-- -- Save your finger
-- keymap.set({ "n", "x" }, ";", ":")

keymap.set("n", "<leader>qw", ":exit<cr>", { silent = true, desc = "save buffer" }) -- Shortcut for faster save and quit
keymap.set("n", "<leader>qq", "<cmd>x<cr>", { silent = true, desc = "quit current window" }) -- Saves the file if modified and quit
keymap.set("n", "<leader>qa", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" }) -- Quit all opened buffers
keymap.set("n", "[l", "<cmd>lprevious<cr>zv", { silent = true, desc = "previous location item" }) -- Navigation in the location and quickfix list
keymap.set("n", "]l", "<cmd>lnext<cr>zv", { silent = true, desc = "next location item" })
keymap.set("n", "[L", "<cmd>lfirst<cr>zv", { silent = true, desc = "first location item" })
keymap.set("n", "]L", "<cmd>llast<cr>zv", { silent = true, desc = "last location item" })
keymap.set("n", "[q", "<cmd>cprevious<cr>zv", { silent = true, desc = "previous qf item" })
keymap.set("n", "]q", "<cmd>cnext<cr>zv", { silent = true, desc = "next qf item" })
keymap.set("n", "[Q", "<cmd>cfirst<cr>zv", { silent = true, desc = "first qf item" })
keymap.set("n", "]Q", "<cmd>clast<cr>zv", { silent = true, desc = "last qf item" })
