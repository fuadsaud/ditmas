-- [nfnl] Compiled from fnl/config/plugins/sexp.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nfnl_string = autoload("nfnl.string")
local constants = autoload("config.constants")
local function setup()
  vim.notify("Running config.plugins.sexp/config")
  vim.g.sexp_filetypes = nfnl_string.join(",", constants["sexp-languages"])
  vim.g.sexp_enable_insert_mode_mappings = 0
  return nil
end
return {setup = setup}
