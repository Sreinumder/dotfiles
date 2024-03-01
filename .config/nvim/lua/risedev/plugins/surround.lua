--┌───────────┬──────────┬────────────┐
--│ Old text  │ Command  │New text    │
--├───────────┼──────────┼────────────┤
--│ surround  │ ysiw)    │(surround)  │  
--│ string    │ ys$"     │"strings"   │   
--│ "lol"     │ ysa"}    │{"lol"}     │   
--│ [ar*ound] │ ds]      │around      │
--│ <b>tag</b>│ dst      │tags        │
--│ 'quote'   │ cs'"     │"quote"     │
--│ <b>tag</b>│ csth1<CR>│<h1>tag</h1>│
--│ fnCall($1)│  dsf     │ $1         │
--│ visualmode│ viwS"    │"visualmode"│
--└───────────┴──────────┴────────────┘
-- note: '(' surrounds with ( space ) 
--       ')' surrounds without (space) 
return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
      })
    end
}

-- ys surround
-- l=letter iw=inside word aw=around word
-- "asfj"

-- ysiw", ysa"), ysl', yst;'
-- ds) ds'
-- cs)' cs'"

-- yss" for whole sentence
-- 'hello world' 
-- i mod <C-g>s(
-- v mod S'

