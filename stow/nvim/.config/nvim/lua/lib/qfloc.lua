-- [nfnl] Compiled from fnl/lib/qfloc.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nfnl_core = autoload("nfnl.core")
local function get(target)
  local _2_ = target
  if (_2_ == "c") then
    return vim.fn.getqflist()
  elseif (_2_ == "l") then
    return vim.fn.getloclist()
  elseif true then
    local _ = _2_
    return error(("Unrecognized target " .. target))
  else
    return nil
  end
end
local function name(target)
  return ({c = "quickfix", l = "location"})[target]
end
local function open_3f(target)
  local function _4_(_241)
    return (1 == (_241)[name(target)])
  end
  return nfnl_core.some(_4_, vim.fn.getwininfo())
end
local function open_21(target)
  if nfnl_core["empty?"](get(target)) then
    return vim.notify((name(target) .. "list is empty"), vim.log.levels.WARN)
  else
    return vim.cmd((target .. "open"))
  end
end
local function close_21(target)
  return vim.cmd((target .. "close"))
end
local function toggle(target)
  if open_3f(target) then
    return close_21(target)
  else
    return open_21(target)
  end
end
return {toggle = toggle, ["close!"] = close_21, ["open!"] = open_21, ["open?"] = open_3f, name = name, get = get}
