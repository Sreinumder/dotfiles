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
    config = function()
      require("catppuccin").setup({
        -- flavour = "latte",
        -- flavour = "frappe",
        flavour = "macchiato",
        -- flavour = "mocha",
      })
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  { "bluz71/vim-nightfly-guicolors",
    config = function()
      -- vim.cmd([[colorscheme nightfly]])
    end,
  },
  { "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "storm",
      })
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
