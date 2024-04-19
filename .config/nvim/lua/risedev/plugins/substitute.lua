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
        vim.keymap.set("n", "sx", require('substitute.exchange').operator, { noremap = true })
        vim.keymap.set("n", "sxx", require('substitute.exchange').line, { noremap = true })
        vim.keymap.set("x", "X", require('substitute.exchange').visual, { noremap = true })
        vim.keymap.set("n", "sxc", require('substitute.exchange').cancel, { noremap = true })
        vim.keymap.set("n", "<leader>sr", require('substitute.range').operator, { noremap = true })
        vim.keymap.set("x", "<leader>sr", require('substitute.range').visual, { noremap = true })
        vim.keymap.set("n", "<leader>srr", require('substitute.range').word, { noremap = true })
        -- vim.keymap.set("n", "<leader>h",require('substitute.exchange').operator, )
    end,
}
-- feeijfi
-- rise is good not
