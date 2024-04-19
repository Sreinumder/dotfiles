--┌────────────────────────────────┐
--│dial up      <C-a>              │
--│dial down    <C-x>              │
--│月-> 水 2024/02/29 -> 2024/03/01│
--└────────────────────────────────┘
return {
    'monaqa/dial.nvim',
    config = function()
        vim.keymap.set("n", "<C-a>", function() require("dial.map").manipulate("increment", "normal") end, {desc = "dial up"})
        vim.keymap.set("n", "<C-x>", function() require("dial.map").manipulate("decrement", "normal") end, {desc = "dial down"})
        vim.keymap.set("n", "g<C-a>", function() require("dial.map").manipulate("increment", "gnormal")end,{desc = "dial up"})
        vim.keymap.set("n", "g<C-x>", function() require("dial.map").manipulate("decrement", "gnormal")end,{desc = "dial down"})
        vim.keymap.set("v", "<C-a>", function() require("dial.map").manipulate("increment", "visual") end, {desc = "dial up"})
        vim.keymap.set("v", "<C-x>", function() require("dial.map").manipulate("decrement", "visual") end, {desc = "dial down"})
        vim.keymap.set("v", "g<C-a>", function() require("dial.map").manipulate("increment", "gvisual")end,{desc = "dial up"})
        vim.keymap.set("v", "g<C-x>", function() require("dial.map").manipulate("decrement", "gvisual")end,{desc = "dial down"})
        local augend = require("dial.augend")
        require("dial.config").augends:register_group{
            -- default augends used when no group name is specified
            default = {
                -- augend.integer.alias.decimal,   -- nonnegative decimal number (0, 1, 2, 3, ...)
                augend.integer.alias.decimal_int, --decimal with negative number
                augend.integer.alias.octal, --octal number
                augend.integer.alias.binary,
                augend.integer.alias.hex,       -- nonnegative hex number  (0x01, 0x1a1f, etc.)

                augend.date.alias["%Y/%m/%d"],  -- date (2022/02/19, etc.)
                augend.date.alias["%m/%d/%Y"], -- date (02/19/2022, etc.)
                augend.date.alias["%Y-%m-%d"],
                augend.date.alias["%d.%m.%y"],
                augend.date.alias["%Y年%-m月%-d日"],
                augend.date.alias["%Y年%-m月%-d日(%ja)"],
                augend.date.alias["%H:%M:%S"],

                augend.constant.alias.ja_weekday, --月, 火, ..., 土, 日
                augend.constant.alias.ja_weekday_full,	--Japanese full weekday 	月曜日, 火曜日, ..., 日曜日

                augend.constant.alias.alpha, --alphabets a,b,c,d
                augend.constant.alias.Alpha, --alphabets A,B,C,D
                augend.constant.alias.bool,    -- boolean value (true <-> false)

                augend.hexcolor.new{ case = "lower", }, --Hexcolors like #e434ff

                augend.semver.alias.semver, 	--Semantic version 	0.3.0, 1.22.1, 3.9.1, ..
            },
        }
    end,
}
