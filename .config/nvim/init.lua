-- if true then
vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])
require("risedev.core")
require("risedev.lazy")
vim.cmd([[colorscheme everforest]])
require("risedev.autocmds")

if vim.g.neovide then
  -- vim.o.guifont = "Source Code Pro:h14"
end
