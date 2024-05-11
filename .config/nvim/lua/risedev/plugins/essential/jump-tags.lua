return {
  'harrisoncramer/jump-tag',
  ft = {"html", "js"},
  config = function()
      vim.keymap.set('n', '<leader>55', ':lua require("jump-tag").jumpParent()<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>5n', ':lua require("jump-tag").jumpNextSibling()<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>5p', ':lua require("jump-tag").jumpPrevSibling()<CR>', { noremap = true, silent = true})
      vim.keymap.set('n', '<leader>5c', ':lua require("jump-tag").jumpChild()<CR>', { noremap = true, silent = true})
  end
}
