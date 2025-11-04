-- [nfnl] fnl/config/init.fnl
vim.loader.enable()
vim.g.mapleader = " "
vim.g.maplocalleader = "+"
local modules = {"config.options", "config.plugins", "config.colors", "config.diagnostic", "config.filetypes", "config.netrw", "config.commands", "config.mappings"}
for _, module_name in ipairs(modules) do
  require(module_name):init()
end
return nil
