-- if true then
vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])
require("risedev.core")
require("risedev.lazy")
vim.cmd([[colorscheme everforest]])
require("risedev.autocmds")
-- else
