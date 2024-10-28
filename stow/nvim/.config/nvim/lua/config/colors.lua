-- [nfnl] Compiled from fnl/config/colors.fnl by https://github.com/Olical/nfnl, do not edit.
local colorscheme = "rose-pine"
local function init()
  return vim.cmd({cmd = "colorscheme", args = {colorscheme}})
end
return {init = init}
