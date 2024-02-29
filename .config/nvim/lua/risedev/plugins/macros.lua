return {
  "kr40/nvim-macros",
  cmd = {"MacroSave", "MacroYank", "MacroSelect", "MacroDelete"},
  opts = {
  
    json_file_path = vim.fs.normalize(vim.fn.stdpath("config") .. "/macros.json"), -- Location where the macros will be stored
    default_macro_register = "q", -- Use as default register for :MacroYank and :MacroSave and :MacroSelect Raw functions
    json_formatter = "none", -- can be "none" | "jq" | "yq" used to pretty print the json file (jq or yq must be installed!)
    
  },
  config = function()
    require('nvim-macros').setup({
      json_file_path = "~/rose/rise/macros.json",
      default_macro_register = "a",
      json_formatter = "jq",
    })
  end,
}
