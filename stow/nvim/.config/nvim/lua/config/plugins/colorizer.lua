-- [nfnl] Compiled from fnl/config/plugins/colorizer.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local colorizer = autoload("colorizer")
local function setup()
  vim.o.termguicolors = true
  return colorizer.setup({})
end
return {setup = setup}
