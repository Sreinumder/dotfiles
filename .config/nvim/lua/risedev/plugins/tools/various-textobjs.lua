return {
  "chrisgrieser/nvim-various-textobjs",
  lazy = false,
  opts = { useDefaultKeymaps = true },
  config = function()
    require'nvim-treesitter.configs'.setup {
      textobjects = {
        swap = {
          enable = true,
          swap_next = {
            ["<leader>ph"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>pl"] = "@parameter.inner",
          },
        },
      },
    }
  end,
}
