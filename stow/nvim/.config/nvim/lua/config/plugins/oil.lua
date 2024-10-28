-- [nfnl] Compiled from fnl/config/plugins/oil.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nfnl_core = autoload("nfnl.core")
local oil = autoload("oil")
local function setup()
  oil.setup({keymaps = {["<C-p>"] = false}, ["<C-x>"] = "actions.preview", ["<C-v>"] = "actions.select_vsplit", ["<C-s>"] = false})
  local function _2_(opts)
    return vim.fn.system({"open", nfnl_core.first(opts.fargs)})
  end
  return vim.api.nvim_create_user_command("Browse", _2_, {nargs = 1})
end
return {setup = setup}
