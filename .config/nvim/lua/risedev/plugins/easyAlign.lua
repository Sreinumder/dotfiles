return {
    'junegunn/vim-easy-align',
    config = function()
        vim.keymap.set({"n", "x"}, "<a-u>", ":UndotreeToggle<CR>", {desc = "toggle undotree"})
    end,
}
