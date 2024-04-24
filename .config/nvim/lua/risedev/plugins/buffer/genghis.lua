-- ┌─────────────────────────────────┐
-- │  handle files easily            │
-- │  <space>g                       │
-- └─────────────────────────────────┘

return {
	"chrisgrieser/nvim-genghis",
	dependencies = "stevearc/dressing.nvim",
	config = function()
		local keymap = vim.keymap.set
		local genghis = require("genghis")
		keymap("n", "<leader>eyp", genghis.copyFilepath)
		keymap("n", "<leader>eyn", genghis.copyFilename)
		keymap("n", "<leader>ecx", genghis.chmodx)
		keymap("n", "<leader>er", genghis.renameFile)
		keymap("n", "<leader>emm", genghis.moveAndRenameFile)
		keymap("n", "<leader>emc", genghis.moveToFolderInCwd)
		keymap("n", "<leader>en", genghis.createNewFile)
		keymap("n", "<leader>eyy", genghis.duplicateFile)
		keymap("n", "<leader>edf", genghis.trashFile)
		keymap("x", "<leader>en", genghis.moveSelectionToNewFile)
	end,
}
