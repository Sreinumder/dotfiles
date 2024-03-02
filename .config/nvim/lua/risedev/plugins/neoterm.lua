return {
  'itmecho/neoterm.nvim',
  config = function()
    -- Setup global config
    require('neoterm').setup({
      clear_on_run = true, -- run clear command before user specified commands
      mode = 'vertical',   -- vertical/horizontal/fullscreen
      noinsert = false,     -- disable entering insert mode when opening the neoterm window
      vim.keymap.set('n', "<A-t><A-t>", "<cmd>NeotermToggle<CR>", {desc = "NeoTermToggle"}),
      vim.keymap.set('n', "<leader>tr", ":NeotermRun<space>",{desc = "NeoTermToggle"}),
      vim.keymap.set('n', "<leader>tR", "<cmd>NeotermRerun<CR>",{desc = "NeoTermToggle"}),
      vim.keymap.set('n', "<A-t>tq", "<cmd>NeotermExit<CR>",{desc = "NeoTermToggle"}),
    })
  end,
}
