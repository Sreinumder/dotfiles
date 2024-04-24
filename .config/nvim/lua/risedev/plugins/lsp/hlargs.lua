--┌──────────────────────────────────────┐
--│Highlight arguments, definitions and  │
--│usages asynchronously using Treesitter│
--└──────────────────────────────────────┘

return {
  'm-demare/hlargs.nvim',
  config = function()
    require('hlargs').setup()
  end,
}
