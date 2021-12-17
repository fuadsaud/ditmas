config_files = {
  'options',
  'plug-helpers',
  'plug',
  'ag',
  'colors',
  'conjure',
  'contabs',
  'fts',
  'mappings',
  'splitjoin',
  'sexp',
  'airline',
  'sneak'
}

for _, config_file in ipairs(config_files) do
  vim.cmd('source ' .. os.getenv('XDG_CONFIG_HOME') .. '/nvim/' .. config_file .. '.vim')
end

require('config.plugins.autopairs')
require('config.plugins.cmp')
require('config.plugins.lsp')
require('config.plugins.telescope')
require('config.plugins.treesitter')
