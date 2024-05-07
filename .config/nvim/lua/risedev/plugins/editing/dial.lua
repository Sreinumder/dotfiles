--┌────────────────────────────────┐
--│dial up      <C-a>              │
--│dial down    <C-x>              │
--│月-> 水 2024/02/29 -> 2024/03/01│
--└────────────────────────────────┘
return {
  "monaqa/dial.nvim",
  keys = { "<C-a>", "<C-x>", "g<C-a>", "g<C-x>", mode = {"n", "x"}},
  config = function()
    local augend = require("dial.augend")
    local direction_word = augend.constant.new({ elements = { "up", "down", "left", "right"}, word = false, cyclic = true })
    -- local direction_word = augend.constant.new({ elements = { "{U,u}p", "{D,d}own", "{L,l}eft", "{R,r}ight"}, word = true, cyclic = true })
    local logical_alias = augend.constant.new({ elements = { "&&", "||" }, word = false, cyclic = true })
    local logical_word_alias = augend.constant.new({ elements = { "and", "or" }, word = true, cyclic = true })
    local capitalized_boolean = augend.constant.new({ elements = { "True", "False" }, word = true, cyclic = true })
    local weekdays = augend.constant.new({ elements = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" }, word = true, cyclic = true, })
    local months = augend.constant.new({ elements = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", }, word = true, cyclic = true, })
    -- local ordinal_numbers_a = augend.constant.new({ elements = { "first", "second", "third", "fourth"}, word = false, cyclic = false,})
    -- local numbers_word_a = augend.constant.new({ elements = { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"},word = false, cyclic = false, })
    -- local ordinal_numbers_b = augend.constant.new({ elements = { "tenth", "eleventh", "twelveth", "thirteenth", "fourteenth", "fifteenth", "sixteenth", "seventeenth", "eighteenth", "nineteenth", "twentieth", "twentyfirst", },word = true, cyclic = false, })
    -- local numbers_word_b = augend.constant.new({ elements = { "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty" },word = true, cyclic = true, })
    -- local numbers_word_c = augend.constant.new({ elements = { "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety", "hundred" },word = false, cyclic = true, })
    local dial_config = require "dial.config"
    local augend_base = {
      augend.integer.alias.decimal, -- nonnegative decimal number (0, 1, 2, 3, ...)
      augend.integer.alias.hex, -- nonnegative hex number  (0x01, 0x1a1f, etc.)
      augend.date.alias["%Y/%m/%d"], -- date (2024/04/23, etc.)
      augend.constant.alias.bool, -- boolean value (true <-> false)
      logical_word_alias, -- and<->or
      logical_alias, -- &&<->||
      direction_word,
      weekdays, months,
      augend.semver.alias.semver, -- versioning (v6.8.3)
    }
    local function concat_tables(table1, table2)
      if table2 == nil then
        return table1
      end
      local result = table1 or {}
      for _, value in ipairs(table2) do
        result = concat_tables(result, value)
      end
      return result
    end

    dial_config.augends:register_group{ default = augend_base }
    dial_config.augends:on_filetype{
      typescript = concat_tables(augend_base, {augend.constant.new{ elements = { "let", "const" }}}),
      css, html = concat_tables(augend_base, {augend.integer.alias.decimal, augend.hexcolor.new{ case = "lower" }, augend.hexcolor.new{ case = "upper" } }),
      markdown = concat_tables(augend_base,  {augend.misc.alias.markdown_header}),
      json = concat_tables(augend_base, {}),
      lua =  concat_tables(augend_base,{capitalized_boolean}), 
      python = concat_tables(augend_base,  {capitalized_boolean}),
    }
    vim.keymap.set("n", "<C-a>", function()
      require("dial.map").manipulate("increment", "normal")
    end)
    vim.keymap.set("n", "<C-x>", function()
      require("dial.map").manipulate("decrement", "normal")
    end)
    vim.keymap.set("n", "g<C-a>", function()
      require("dial.map").manipulate("increment", "gnormal")
    end)
    vim.keymap.set("n", "g<C-x>", function()
      require("dial.map").manipulate("decrement", "gnormal")
    end)
    vim.keymap.set("v", "<C-a>", function()
      require("dial.map").manipulate("increment", "visual")
    end)
    vim.keymap.set("v", "<C-x>", function()
      require("dial.map").manipulate("decrement", "visual")
    end)
    vim.keymap.set("v", "g<C-a>", function()
      require("dial.map").manipulate("increment", "gvisual")
    end)
    vim.keymap.set("v", "g<C-x>", function()
      require("dial.map").manipulate("decrement", "gvisual")
    end)
  end,
}
