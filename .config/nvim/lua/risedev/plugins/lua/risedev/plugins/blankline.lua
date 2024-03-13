--┌─────────────────────────────────────────────────────┐
--│func(){                                              │
--││ inserts indent line like at the start of this line │
--│}                                                    │
--└─────────────────────────────────────────────────────┘
return { "lukas-reineke/indent-blankline.nvim", 
  main = "ibl",
  opts = {},
  config = function()
    require("ibl").setup({
    })
  end,
}
