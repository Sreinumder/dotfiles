-- ┌────────────────────────────────────────────┐
-- │automatically sets html tags like <t1> </t1>│
-- └────────────────────────────────────────────┘
return {
  'windwp/nvim-ts-autotag',
  event = { "InsertEnter" },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
