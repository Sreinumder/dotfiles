-- ┌───────────────────────────────────────────────┐
-- │ removes uselss spaces at eol <>dte >____<     │
-- │ removes uselss lines  at eof <>dtf            │
-- │ >____________________________________________<│
-- │ >                                            <│
-- └───────────────────────────────────────────────┘
return {
  'echasnovski/mini.trailspace',
  version = '*',
  config = function()
    require('mini.trailspace').setup()
    vim.keymap.set('n', "<Leader>dtf", function() require('mini.trailspace').trim_last_lines() end, {desc = "trim empty lines at eof"})
    vim.keymap.set('n', "<Leader>dte", function() require('mini.trailspace').trim() end, {desc = "trim empty spaces at eol"})
  end,
}
