-- [nfnl] Compiled from fnl/config/plugins/leap.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local leap = autoload("leap")
local function setup()
  return leap.add_default_mappings()
end
return {setup = setup}
