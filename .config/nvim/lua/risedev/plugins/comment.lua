-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
    'numToStr/Comment.nvim',
    event = {"BufReadPre", "BufNewFile"},
    opts = {
        -- add any options here
    },
    config = true,
    lazy = false,
}
-- Line-comment toggle keymap line = 'gcc',
-- Block-comment toggle keymap block = 'gbc',

-- extra mappings
-- Add comment on the line above above = 'gcO',
-- Add comment on the line below below = 'gco',
-- Add comment at the end of line eol = 'gcA',
