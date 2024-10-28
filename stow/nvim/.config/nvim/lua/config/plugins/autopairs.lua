-- [nfnl] Compiled from fnl/config/plugins/autopairs.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nfnl_core = autoload("nfnl.core")
local autopairs = autoload("nvim-autopairs")
local constants = autoload("config.constants")
local function setup()
  return autopairs.setup({check_ts = true, disable_filetype = nfnl_core.concat({"TelescopePrompt"}, constants["sexp-languages"])})
end
return {setup = setup}
