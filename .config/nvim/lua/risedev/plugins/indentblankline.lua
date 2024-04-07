--┌─────────────────────────────────────────────────────┐
--│func(){                                              │
--││ inserts indent line like at the start of this line │
--│}                                                    │
--└─────────────────────────────────────────────────────┘
return { 
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    show_start = false,
    show_end = false,
    show_exact_scope = false,
  },
  config = function()
    require("ibl").setup({
  })
  end,
}
