-- [nfnl] Compiled from fnl/config/plugins/ferret.fnl by https://github.com/Olical/nfnl, do not edit.
local function setup()
  vim.g.FerretExecutableArguments = {rg = "--vimgrep --no-heading --max-columns=4096"}
  return nil
end
return {setup = setup}
