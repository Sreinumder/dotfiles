return {
 'andymass/vim-matchup',
 events = "VeryLazy",
 opts = {},
 config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
 end,
}
