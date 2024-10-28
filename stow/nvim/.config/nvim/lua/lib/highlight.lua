-- [nfnl] Compiled from fnl/lib/highlight.fnl by https://github.com/Olical/nfnl, do not edit.
local function get_hl(name)
  local _, _0, hl = string.find((vim.api.nvim_exec2(("highlight " .. name), {output = true})).output, "xxx (.*)")
  local _1_, _2_, _3_ = string.find(hl, "links to (%a+)")
  if (_1_ == nil) then
    return hl
  elseif (true and true and (nil ~= _3_)) then
    local _1 = _1_
    local _2 = _2_
    local n = _3_
    return get_hl(n)
  else
    return nil
  end
end
local function conj_val(vals, v)
  if string.find(vals, v) then
    return vals
  else
    return (vals .. "," .. v)
  end
end
local function conj_hl(hl, k, v)
  local prefix = (k .. "=")
  local _6_, _7_ = nil, nil
  local function _8_(_241)
    return (prefix .. conj_val(_241, v))
  end
  _6_, _7_ = string.gsub(hl, (prefix .. "(%a+)"), _8_, 1)
  if ((nil ~= _6_) and (_7_ == 1)) then
    local hl_2a = _6_
    return hl_2a
  elseif ((nil ~= _6_) and (_7_ == 0)) then
    local hl_2a = _6_
    return (hl_2a .. " " .. prefix .. v)
  else
    return nil
  end
end
local function make_italic(name)
  return vim.cmd.highlight(name, conj_hl(get_hl(name), "gui", "italic"))
end
return {["get-hl"] = get_hl, ["conj-val"] = conj_val, ["make-italic"] = make_italic}
