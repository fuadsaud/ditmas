-- [nfnl] Compiled from fnl/config/plugins/cmp.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local luasnip = autoload("luasnip")
local cmp = autoload("cmp")
local cmp_src_menu_items = {buffer = "buff", luasnip = "luasnip", conjure = "conj", nvim_lsp = "lsp", nvim_lsp_signature_help = "signature"}
local function setup()
  local function _2_(entry, item)
    item.menu = (cmp_src_menu_items[entry.source.name] or "")
    return item
  end
  local function _3_(args)
    return luasnip.lsp_expand(args.body)
  end
  return cmp.setup({preselect = cmp.PreselectMode.None, formatting = {format = _2_}, window = {completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered()}, snippet = {expand = _3_}, mapping = cmp.mapping.preset.insert({["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-n>"] = cmp.mapping.select_next_item(), ["<C-b>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete(), ["<C-e>"] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}), ["<CR>"] = cmp.mapping.confirm({select = false})}), sources = cmp.config.sources({{name = "nvim_lsp"}, {name = "nvim_lsp_signature_help"}, {name = "luasnip"}, {name = "conjure"}, {name = "buffer"}})})
end
return {setup = setup}
