local opt = vim.opt
--opt.nofoldenable = true
--opt.nohlsearch = true
vim.o.cmdheight = 0 -- sets cmd height as 0
opt.lazyredraw = false
opt.termguicolors = true
opt.relativenumber = true --show relative number
opt.number = true

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true -- highlight the current cursor line
-- opt.cursorcolumn = true -- highlight the current cursor column
--setlocal cc=80
-- vim.g.cc = 80
vim.g.colorcolumn = 80


-- turn on termguicolors for nightfly colorscheme to work
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- hide the ~ character on empty lines at the end of the buffer
opt.fcs = "eob: "

opt.spell = false
opt.spelllang = { 'en_us' }
