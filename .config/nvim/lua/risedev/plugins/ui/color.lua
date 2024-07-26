--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘
return {
  {
    "neanias/everforest-nvim",
    events = "VeryLazy",
    config = function()
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
