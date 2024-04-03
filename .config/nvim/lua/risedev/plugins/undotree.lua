return {
  'mbbill/undotree',
  config = function()
    -- localundotree = require("undotree")
    vim.keymap.set("n", "<a-u>", ":UndotreeToggle<CR>", {desc = "toggle undotree"})
  end,
}
