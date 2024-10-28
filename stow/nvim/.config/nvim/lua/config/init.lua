-- [nfnl] Compiled from fnl/config/init.fnl by https://github.com/Olical/nfnl, do not edit.
vim.loader.enable()
vim.g.mapleader = " "
vim.g.maplocalleader = "+"
local modules = {"config.options", "config.plugins", "config.colors", "config.diagnostic", "config.filetypes", "config.netrw", "config.mappings"}
for _, module_name in ipairs(modules) do
  require(module_name):init()
end
return nil
