return {
    "gbprod/substitute.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        require('substitute').setup()
        vim.keymap.set("n", "s", require('substitute').operator, { noremap = true })
        vim.keymap.set("n", "ss", require('substitute').line, { noremap = true })
        vim.keymap.set("n", "S", require('substitute').eol, { noremap = true })
        vim.keymap.set("x", "s", require('substitute').visual, { noremap = true })
        vim.keymap.set("n", "<A-s>", require('substitute.exchange').operator, { noremap = true })
        vim.keymap.set("n", "<A-s><A-s>", require('substitute.exchange').line, { noremap = true })
        vim.keymap.set("x", "<A-s>", require('substitute.exchange').visual, { noremap = true })
        vim.keymap.set("n", "<A-s>c", require('substitute.exchange').cancel, { noremap = true })
        vim.keymap.set("n", "<A-S>s", require('substitute.range').operator, { noremap = true })
        vim.keymap.set("x", "<A-S>s", require('substitute.range').visual, { noremap = true })
        vim.keymap.set("n", "<A-S>sr", require('substitute.range').word, { noremap = true })
        -- vim.keymap.set("n", "<leader>h",require('substitute.exchange').operator, )
        -- vim.keymap.set("n", "<A-g>l", "€üsiww.", {desc=""})
    end,
}
-- feeijfi
-- is rise good not
-- €üsiww.

