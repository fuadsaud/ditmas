-- [nfnl] fnl/config/plugins/treesitter.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local treesitter = autoload("nvim-treesitter.configs")
local function setup()
  return treesitter.setup({ensure_installed = "all", ignore_install = {"norg", "scfg"}, indent = {enable = true}, highlight = {enable = true}, incremental_selection = {enable = true, keymaps = {init_selection = "<CR>", node_incremental = "<Tab>", node_decremental = "<S-Tab>", scope_incremental = "<CR>"}}, autotag = {enable = false}})
end
return {setup = setup}
