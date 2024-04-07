return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
  local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
    green  = '#A7C080'
  }

  local bubbles_theme = {
    normal = {
      a = { fg = colors.black, bg = colors.blue },
      b = { fg = colors.white, bg = colors.grey },
      c = { fg = colors.white },
    },

    insert = { a = { fg = colors.black, bg = colors.green } },
    visual = { a = { fg = colors.black, bg = colors.red } },
    replace = { a = { fg = colors.black, bg = colors.violet } },

    inactive = {
      a = { fg = colors.white, bg = colors.grey },
      b = { fg = colors.white, bg = colors.grey },
      c = { fg = colors.white },
    },
  }

  require('lualine').setup {
    options = {
      theme = bubbles_theme,
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 0 } },
      lualine_b = { 'filename' , 'branch'},
      lualine_c = { '%=', --[[ add your center compoentnts here in place of this comment ]] },
      lualine_x = {},
      lualine_y = { 'filetype', },
      lualine_z = { 'progress', { 'location'}, },
    },
    inactive_sections = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
  }
    end,
}
