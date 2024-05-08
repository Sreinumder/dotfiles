local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "
-- delete with x d or D and cut with alt + x + d + D
keymap.set({ "n", "v", "x" }, "x", '"_x')
keymap.set({ "n", "v", "x" }, "X", '"_X')
keymap.set({ "n", "v", "x" }, "d", '"_d')
keymap.set({ "n", "v", "x" }, "D", '"_D')
keymap.set({ "n", "v", "x" }, "c", '"_c')
keymap.set({ "n", "v", "x" }, "C", '"_C')

-- press Alt to put in register else just edit
keymap.set({ "n", "v", "x" }, "<A-x>", "x")
keymap.set({ "n", "v", "x" }, "<A-X>", "X")
keymap.set({ "n", "v", "x" }, "<A-d>", "d")
keymap.set({ "n", "v", "x" }, "<A-D>", "D")
keymap.set({ "n", "v", "x" }, "<A-c>", "c")
keymap.set({ "n", "v", "x" }, "<A-C>", "C")
keymap.set({ "n", "v", "x" }, "<A-d><A-d>", "dd")
keymap.set({ "n", "v", "x" }, "<A-c><A-c>", "cc")

-- deletes without letting the *selection* selection the contents of default register
keymap.set({ "v", "x" }, "p", '"_dP')
keymap.set({ "v", "x" }, "P", '"_dp')

keymap.set({ "v", "x" }, "<A-p>", "p")
keymap.set({ "v", "x" }, "<A-P>", "P")

-- like gv for last paste
-- keymap.set({ "n" }, "<A-g><A-v>", "`[v`]")
-- keymap.set({ "n" }, "<A-g>v>", "`[v`]")

-- Reselect the text that has just been pasted like gv, see also https://stackoverflow.com/a/4317090/6064933.
keymap.set("n", "gV", "printf('`[%s`]', getregtype()[0])", { expr = true, desc = "true" })

-- Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
keymap.set("n", "<leader><A-p>", "m`o<ESC>p``", { desc = "paste below current line" })
keymap.set("n", "<leader><A-P>", "m`O<ESC>p``", { desc = "paste above current line" })
keymap.set("n", "<leader>p", "o<ESC>p", { desc = "paste below current line" })
keymap.set("n", "<leader>P", "O<ESC>p", { desc = "paste above current line" })

-- Copy entire buffer.
-- keymap.set("n", "<leader>ay", "<cmd>%yank<cr>", { desc = "yank entire buffer" })
-- keymap.set("n", "<leader>ad", "<cmd>%delete<cr>", { desc = "delete entire buffer" })

-- Toggle cursor column
-- keymap.set("n", "<leader>cl", "<cmd>call utils#ToggleCursorCol()<cr>", { desc = "toggle cursor column" })
