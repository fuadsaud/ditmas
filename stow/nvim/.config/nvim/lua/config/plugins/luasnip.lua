-- [nfnl] Compiled from fnl/config/plugins/luasnip.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local luasnip = autoload("luasnip")
local from_vscode = autoload("luasnip.loaders.from_vscode")
local from_snipmate = autoload("luasnip.loaders.from_snipmate")
local function setup()
  luasnip.filetype_extend("javascript", {"react", "html"})
  luasnip.filetype_extend("typescript", {"javascript"})
  from_vscode.lazy_load()
  return from_snipmate.lazy_load()
end
return {setup = setup}
