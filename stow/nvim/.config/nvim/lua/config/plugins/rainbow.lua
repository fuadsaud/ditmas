-- [nfnl] Compiled from fnl/config/plugins/rainbow.fnl by https://github.com/Olical/nfnl, do not edit.
local function setup()
  vim.notify("config.plugins.rainbow/config")
  return vim.api.nvim_set_var("rainbow_active", 1)
end
return {setup = setup}
