-- [nfnl] Compiled from fnl/config/options.fnl by https://github.com/Olical/nfnl, do not edit.
local options
local function _1_(_241)
  return _241:append({c = true})
end
options = {shell = os.getenv("SHELL"), encoding = "utf-8", visualbell = true, showmatch = true, title = true, number = true, cursorline = true, colorcolumn = {80, 100, 120}, fillchars = {vert = "\226\148\130"}, list = true, listchars = {tab = "\226\150\182-", trail = "\226\128\162", extends = "\194\187", precedes = "\194\171"}, splitbelow = true, splitright = true, clipboard = "unnamedplus", wildmode = {"longest", "full"}, mouse = "a", undofile = true, autoindent = true, copyindent = true, expandtab = true, tabstop = 2, softtabstop = 2, shiftwidth = 2, shiftround = true, ignorecase = true, smartcase = true, gdefault = true, inccommand = "split", foldlevelstart = 10, foldnestmax = 10, foldmethod = "syntax", completeopt = {"menu", "menuone", "noselect"}, shortmess = _1_, wrap = false, relativenumber = false, swapfile = false, showmode = false}
local function init()
  for option, value in pairs(options) do
    if ("function" == type(value)) then
      value(vim.opt[option])
    else
      vim.opt[option] = value
    end
  end
  return nil
end
return {init = init}
