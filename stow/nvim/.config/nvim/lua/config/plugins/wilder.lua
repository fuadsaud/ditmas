-- [nfnl] Compiled from fnl/config/plugins/wilder.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local wilder = autoload("wilder")
local function setup()
  return wilder.setup({modes = {":", "/", "?"}})
end
return {setup = setup}
