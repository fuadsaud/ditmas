-- [nfnl] Compiled from fnl/config/plugins/lualine.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local lualine = autoload("lualine")
local rhizome = autoload("rhizome")
local lazy_status = autoload("lazy.status")
local nfnl_core = autoload("nfnl.core")
local function setup()
  vim.opt.laststatus = 3
  local filename
  local function _2_(p)
    if ("[" == p:sub(1, 1)) then
      return p
    else
      local segments = vim.split(p, "/")
      local filename0 = nfnl_core.last(segments)
      local segments_to_shorten = nfnl_core.butlast(segments)
      if (1 == nfnl_core.count(segments)) then
        return table.concat(segments)
      else
        local function _3_(segment)
          return segment:sub(1, 1)
        end
        return nfnl_core.str(table.concat(nfnl_core.map(_3_, segments_to_shorten), "/"), "/", filename0)
      end
    end
  end
  filename = {"filename", newfile_status = true, path = 1, fmt = _2_}
  local lazy = {lazy_status.updates, cond = lazy_status.has_updates}
  local tabs
  local function _6_()
    return (vim.fn.tabpagenr("$") > 1)
  end
  local function _7_(_name, context)
    return rhizome.label_for_tabnr(context.tabnr)
  end
  tabs = {"tabs", mode = 1, cond = _6_, fmt = _7_}
  lualine.setup({options = {theme = "rose-pine"}, extensions = {"lazy", "man", "nvim-dap-ui", "quickfix", "trouble"}, globalstatus = true, sections = {lualine_c = {filename}, lualine_x = {lazy}, lualine_y = {"encoding", "fileformat", "filetype"}, lualine_z = {"progress", "location", tabs}}})
  return vim.cmd("set showtabline=0")
end
return {setup = setup}
