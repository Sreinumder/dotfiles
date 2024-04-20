return {
  "chrisgrieser/nvim-genghis",
  dependencies = "stevearc/dressing.nvim",
  config = function()
    local keymap = vim.keymap.set
    local genghis = require("genghis")
    keymap("n", "<leader>gyp", genghis.copyFilepath)
    keymap("n", "<leader>gyn", genghis.copyFilename)
    keymap("n", "<leader>gcx", genghis.chmodx)
    keymap("n", "<leader>grf", genghis.renameFile)
    keymap("n", "<leader>gmf", genghis.moveAndRenameFile)
    keymap("n", "<leader>gmc", genghis.moveToFolderInCwd)
    keymap("n", "<leader>gnf", genghis.createNewFile)
    keymap("n", "<leader>gyf", genghis.duplicateFile)
    keymap("n", "<leader>gdf", genghis.trashFile)
    keymap("x", "<leader>gsnf",  genghis.moveSelectionToNewFile)
  end,
}
