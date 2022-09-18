-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/fuad/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/fuad/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/fuad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/fuad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/fuad/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AnsiEsc.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/AnsiEsc.vim",
    url = "https://github.com/vim-scripts/AnsiEsc.vim"
  },
  Hemisu = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/Hemisu",
    url = "https://github.com/noahfrederick/Hemisu"
  },
  MatchTag = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/MatchTag",
    url = "https://github.com/gregsexton/MatchTag"
  },
  Monrovia = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/Monrovia",
    url = "/home/fuad/Sources/fuadsaud/Monrovia"
  },
  ["a.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/a.vim",
    url = "https://github.com/vim-scripts/a.vim"
  },
  aniseed = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/aniseed",
    url = "https://github.com/Olical/aniseed"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["baleia.nvim"] = {
    config = { "require('config.plugins.baleia').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/baleia.nvim",
    url = "https://github.com/m00qek/baleia.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-conjure"] = {
    after_files = { "/home/fuad/.local/share/nvim/site/pack/packer/opt/cmp-conjure/after/plugin/cmp_conjure.lua" },
    load_after = {
      conjure = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/cmp-conjure",
    url = "https://github.com/PaterJason/cmp-conjure"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  conjure = {
    after = { "cmp-conjure" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/conjure",
    url = "https://github.com/Olical/conjure"
  },
  ferret = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/ferret",
    url = "https://github.com/wincent/ferret"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gist-vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/gist-vim",
    url = "https://github.com/mattn/gist-vim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["gundo.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/gundo.vim",
    url = "https://github.com/sjl/gundo.vim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('config.plugins.lualine').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["nvim-cmp"] = {
    config = { "require('config.plugins.cmp').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-contabs"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/nvim-contabs",
    url = "https://github.com/m00qek/nvim-contabs"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.plugins.lspconfig').config()" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["parinfer-rust"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/parinfer-rust",
    url = "https://github.com/eraserhd/parinfer-rust"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    config = { "require('config.plugins.rainbow').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["sort-quire.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/sort-quire.vim",
    url = "https://github.com/paulojean/sort-quire.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require('config.plugins.telescope').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tmuxline.vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/tmuxline.vim",
    url = "https://github.com/edkolev/tmuxline.vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-ditto"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-ditto",
    url = "https://github.com/dbmrq/vim-ditto"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-exchange",
    url = "https://github.com/tommcdo/vim-exchange"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-gtfo"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-gtfo",
    url = "https://github.com/justinmk/vim-gtfo"
  },
  ["vim-indent-guides"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-indent-guides",
    url = "https://github.com/nathanaelkane/vim-indent-guides"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-mkdir"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-mkdir",
    url = "https://github.com/pbrisbin/vim-mkdir"
  },
  ["vim-nuuid"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-nuuid",
    url = "https://github.com/kburdett/vim-nuuid"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/vim-python-pep8-indent",
    url = "https://github.com/hynek/vim-python-pep8-indent"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-ragtag",
    url = "https://github.com/tpope/vim-ragtag"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-salve"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/vim-salve",
    url = "https://github.com/fuadsaud/vim-salve"
  },
  ["vim-scriptease"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-scriptease",
    url = "https://github.com/tpope/vim-scriptease"
  },
  ["vim-sexp"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/vim-sexp",
    url = "https://github.com/guns/vim-sexp"
  },
  ["vim-sexp-mappings-for-regular-people"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/vim-sexp-mappings-for-regular-people",
    url = "https://github.com/tpope/vim-sexp-mappings-for-regular-people"
  },
  ["vim-slumlord"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-slumlord",
    url = "https://github.com/fuadsaud/vim-slumlord"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-textobj-rubyblock"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/opt/vim-textobj-rubyblock",
    url = "https://github.com/nelstrom/vim-textobj-rubyblock"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-textobj-variable-segment"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-textobj-variable-segment",
    url = "https://github.com/fuadsaud/vim-textobj-variable-segment"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-togglecursor"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-togglecursor",
    url = "https://github.com/jszakmeister/vim-togglecursor"
  },
  ["vim-togglelist"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-togglelist",
    url = "https://github.com/milkypostman/vim-togglelist"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/webapi-vim",
    url = "https://github.com/mattn/webapi-vim"
  },
  ["which-key.nvim"] = {
    config = { "require('config.plugins.which-key').config()" },
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  winresizer = {
    loaded = true,
    path = "/home/fuad/.local/share/nvim/site/pack/packer/start/winresizer",
    url = "https://github.com/simeji/winresizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
require('config.plugins.rainbow').config()
time([[Config for rainbow]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require('config.plugins.lualine').config()
time([[Config for lualine.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require('config.plugins.which-key').config()
time([[Config for which-key.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('config.plugins.telescope').config()
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.plugins.cmp').config()
time([[Config for nvim-cmp]], false)
-- Config for: baleia.nvim
time([[Config for baleia.nvim]], true)
require('config.plugins.baleia').config()
time([[Config for baleia.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lsp-installer ]]
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
require('config.plugins.lspconfig').config()

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'conjure', 'vim-sexp', 'vim-sexp-mappings-for-regular-people', 'parinfer-rust'}, { ft = "fennel" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-python-pep8-indent'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'vim-textobj-rubyblock'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'vim-salve', 'sort-quire.vim', 'conjure', 'vim-sexp', 'vim-sexp-mappings-for-regular-people', 'parinfer-rust'}, { ft = "clojure" }, _G.packer_plugins)]]
vim.cmd [[au FileType scheme ++once lua require("packer.load")({'conjure', 'vim-sexp', 'vim-sexp-mappings-for-regular-people', 'parinfer-rust'}, { ft = "scheme" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
