-- [nfnl] Compiled from fnl/config/netrw.fnl by https://github.com/Olical/nfnl, do not edit.
local function init()
  vim.g.netrw_browse_split = 0
  vim.g.netrw_liststyle = 3
  vim.g.netrw_preview = 1
  return nil
end
return {init = init}
