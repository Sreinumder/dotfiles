--┌─────────────────────────┐
--│color schemes            │
--│uncomment them to use lol│
--└─────────────────────────┘

return {
   {
    "rmehri01/onenord.nvim", enabled = false,
    priority = 1000,
    config = function()
      require('onenord').setup({theme = 'onenord' })
      -- vim.cmd([[colorscheme onenord]])
    end,
  },
  {
    'sainnhe/everforest' ,
    config = function()
      vim.cmd([[colorscheme everforest]])
    end,
  },
  {
    'shaunsingh/nord.nvim' ,
    config = function()
      -- vim.cmd([[colorscheme nord]])
    end,
  },
  { "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 10000,
    config = function()
      require("catppuccin").setup({ flavour = "mocha", }) -- latte, frappe, macchiato, mocha
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  { "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme nightfly]])
    end,
  },
  { "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({ style = "storm", })
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
