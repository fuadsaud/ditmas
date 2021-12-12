config_files = {
  'options',
  'plug-helpers',
  'plug',
  'ag',
  'jsx',
  'auto-mk-dir',
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
  vim.cmd('source ./' .. config_file .. '.vim')
end

require('config.plugin.autopairs')
require('config.plugin.cmp')
require('config.plugin.lsp')
require('config.plugin.telescope')
require('config.plugin.treesitter')
