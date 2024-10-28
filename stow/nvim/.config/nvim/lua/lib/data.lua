-- [nfnl] Compiled from new/fnl/lib/data.fnl by https://github.com/Olical/nfnl, do not edit.
module(lib.data)
local function map_kv(f, associative)
  return a.reduce(a.merge, {}, a.map(f, a["kv-pairs"](associative)))
end
return {["map-kv"] = map_kv}
