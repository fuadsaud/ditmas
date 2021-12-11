let s:config_dir = stdpath('config')

let s:config_files = [
\   'options',
\   'plug-helpers',
\   'plug',
\   'ag',
\   'jsx',
\   'auto-mk-dir',
\   'colors',
\   'conjure',
\   'contabs',
\   'cmp',
\   'autopairs',
\   'fts',
\   'lsp',
\   'mappings',
\   'telescope',
\   'treesitter',
\   'splitjoin',
\   'sexp',
\   'airline',
\   'sneak'
\ ]

for config_file in s:config_files
  execute "source " . s:config_dir . '/' . config_file . '.vim'
endfor
