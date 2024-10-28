-- [nfnl] Compiled from fnl/config/plugins/abolish.fnl by https://github.com/Olical/nfnl, do not edit.
local mappings = {notoin = "notion", ["envi{n,}roment"] = "environment"}
local function setup()
  for from, to in pairs(mappings) do
    vim.cmd({cmd = "Abolish", args = {from, to}})
  end
  return nil
end
return {setup = setup}
