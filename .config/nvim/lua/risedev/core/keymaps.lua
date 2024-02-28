-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ','

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
---keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single er without copying into register
keymap.set({'n','v'}, "x", '"_x')

-- -- Delete till end but not copy to register
-- keymap.set({'n','v'}, "D", '"_d$')
-- keymap.set({'n'}, "<A-d>d", '"_d$')
--
-- -- use alt modifier to not copy to register
-- keymap.set({'n','v'}, "<A-d>", '"_d')

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
vim.keymap.set("n", "<C-a>", function()
    require("dial.map").manipulate("increment", "normal")
end)
vim.keymap.set("n", "<C-x>", function()
    require("dial.map").manipulate("decrement", "normal")
end)
vim.keymap.set("n", "g<C-a>", function()
    require("dial.map").manipulate("increment", "gnormal")
end)
vim.keymap.set("n", "g<C-x>", function()
    require("dial.map").manipulate("decrement", "gnormal")
end)
vim.keymap.set("v", "<C-a>", function()
    require("dial.map").manipulate("increment", "visual")
end)
vim.keymap.set("v", "<C-x>", function()
    require("dial.map").manipulate("decrement", "visual")
end)
vim.keymap.set("v", "g<C-a>", function()
    require("dial.map").manipulate("increment", "gvisual")
end)
vim.keymap.set("v", "g<C-x>", function()
    require("dial.map").manipulate("decrement", "gvisual")
end)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tq", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
   
-- text wrap navigation swap
keymap.set({'n','v'}, "j", "gj", {desc = "next text wrapped line"})
keymap.set({'n','v'}, "gj", "j", {desc = "next text wrapped line"})
keymap.set({'n','v'}, "k", "gk", {desc = "prev text wrapped line"})
keymap.set({'n','v'}, "gk", "k", {desc = "prev text wrapped line"})
   
-- now mini.move does it better
-- moving sentences up and down
-- keymap.set("n", "<A-j>", ":m .+1<CR>==", {desc = "move line up(n)"})
-- keymap.set("n", "<A-k>", ":m .-2<CR>==", {desc = "move line down(n)"})
-- keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "move line up(v)"})
-- keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {desc = "move line down(v)"})
   
-- moving words left and right
-- {jakjdkf}
-- {jakjdkf}
-- keymap.set("n", "<A-h>", '"mdawb"mPh', {desc = "move word left"})
-- keymap.set("n", "<A-l>", '"mdawwh"mph', {desc = "move word right"})
   
-- keymap.set("n", "<", 'hevwbh"mdawb"mPh', {desc = "move word left"})
-- keymap.set("n", ">", 'hevwbh"mde"mp', {desc = "move word right"})
  -- good not a sentence is this
-- :%s/\v(\w+)\s+(\w+)/\2 \1/
   
   
keymap.set({'n','v'}, "<CR>", "I<CR><ESC>", {desc = "next text wrapped line"})

keymap.set('n', "<Leader>ee", function() vim.cmd("vsplit | wincmd l") require("oil").open() end, {desc = "oil file explorer"})

-- substitute.nvim keybinds
-- keymap.set("n", "s", require('substitute').operator, { noremap = true, desc = "substitute operator" })
-- keymap.set("n", "ss", require('substitute').line, { noremap = true, desc = "substitute line" })
-- keymap.set("n", "S", require('substitute').eol, { noremap = true, desc = "substitute eol" })
-- keymap.set("x", "s", require('substitute').visual, { noremap = true, desc = "substitute visual" })
