local opt = vim.opt
--opt.nofoldenable = true
--opt.nohlsearch = true
vim.o.cmdheight = 0           -- sets cmd height as 0
opt.lazyredraw = true
opt.termguicolors = true
opt.relativenumber = true --show relative number
opt.number = true

opt.ignorecase      = true -- ignore case when searching
opt.smartcase       = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline      = true -- highlight the current cursor line

-- turn on termguicolors for nightfly colorscheme to work
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- want to  autocomment in newline after pressing o 
-- this autocmd doesnt work here needs to be in root init.lua
-- opt.formatoptions:remove({'c','r','o'})

