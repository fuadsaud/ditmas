let g:contabs#integrations#airline = 1
let g:contabs#integrations#airline_theme = 'basename'
let g:contabs#project#locations = [
  \ { 'path': '~/Sources/fuadsaud', 'depth': 1, 'git_only': 0 },
  \ { 'path': '~/Sources/aur', 'depth': 1, 'git_only': 0 },
  \ { 'path': '~/Sources/pitch', 'depth': 1, 'git_only': 0 },
  \ { 'path': $DITMAS_DIR . '/stow', 'depth': 1, 'git_only': 0 },
  \]

"command to change the current tab's workingdir
command! -nargs=1 -complete=dir EP call contabs#project#edit(<q-args>)

"command to open a new tab with some workingdir
command! -nargs=1 -complete=dir TP call contabs#project#tabedit(<q-args>)
