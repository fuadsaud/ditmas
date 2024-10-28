-- [nfnl] Compiled from fnl/config/plugins/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local treesitter = autoload("nvim-treesitter.configs")
local function setup()
  return treesitter.setup({ensure_installed = "all", ignore_install = {"norg", "scfg"}, indent = {enable = true}, highlight = {enable = true}, incremental_selection = {enable = true, keymaps = {init_selection = "gvv", node_incremental = "gvk", node_decremental = "gvj", scope_incremental = "gvK"}}, autotag = {enable = false}})
end
return {setup = setup}
