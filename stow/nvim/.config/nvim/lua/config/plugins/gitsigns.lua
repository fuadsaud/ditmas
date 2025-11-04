-- [nfnl] fnl/config/plugins/gitsigns.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local gitsigns = autoload("gitsigns")
local nfnl_core = autoload("nfnl.core")
local telescope = autoload("telescope")
local function setup()
  local function _2_(bufnr)
    vim.notify("Running config.plugins.gitsigns/on_attach")
    telescope.load_extension("git_signs")
    local buf_set_keymap_fn
    local function _3_(mode, mapping, target_fn, opts)
      return vim.keymap.set(mode, mapping, target_fn, nfnl_core.merge({buffer = bufnr, noremap = true}, opts))
    end
    buf_set_keymap_fn = _3_
    local function _4_()
      if vim.wo.diff then
      else
        local function _5_()
          return gitsigns.next_hunk()
        end
        vim.schedule(_5_)
      end
      return {}
    end
    buf_set_keymap_fn("n", "]c", _4_)
    local function _7_()
      if vim.wo.diff then
      else
        local function _8_()
          return gitsigns.prev_hunk()
        end
        vim.schedule(_8_)
      end
      return {}
    end
    buf_set_keymap_fn("n", "[c", _7_)
    buf_set_keymap_fn("n", "<Leader>hs", gitsigns.stage_hunk)
    buf_set_keymap_fn("n", "<Leader>hr", gitsigns.reset_hunk)
    local function _10_()
      return gitsigns.stage_hunk({vim.fn.line("."), vim.fn.line("v")})
    end
    buf_set_keymap_fn("v", "<Leader>hs", _10_)
    local function _11_()
      return gitsigns.reset_hunk({vim.fn.line("."), vim.fn.line("v")})
    end
    buf_set_keymap_fn("v", "<Leader>hs", _11_)
    buf_set_keymap_fn("n", "<Leader>hS", gitsigns.stage_buffer)
    buf_set_keymap_fn("n", "<Leader>hu", gitsigns.undo_stage_hunk)
    buf_set_keymap_fn("n", "<Leader>hR", gitsigns.reset_buffer)
    buf_set_keymap_fn("n", "<Leader>hp", gitsigns.preview_hunk)
    local function _12_()
      return gitsigns.blame_line({full = true})
    end
    buf_set_keymap_fn("n", "<Leader>hb", _12_)
    buf_set_keymap_fn("n", "<Leader>tb", gitsigns.toggle_current_line_blame)
    buf_set_keymap_fn("n", "<Leader>hd", gitsigns.diffthis)
    local function _13_()
      return gitsigns.diffthis("~")
    end
    buf_set_keymap_fn("n", "<Leader>hD", _13_)
    buf_set_keymap_fn("n", "<Leader>td", gitsigns.toggle_deleted)
    return buf_set_keymap_fn({"o", "x"}, "ih", ":<C-U>Gitsigns select_hunk<CR>")
  end
  return gitsigns.setup({on_attach = _2_})
end
return {setup = setup}
