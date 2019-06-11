let g:contabs#integrations#airline = 1
let g:contabs#integrations#airline_theme = 'basename'
let g:contabs#project#locations = [
  \ { 'path': '~/Sources/fuadsaud', 'depth': 1, 'git_only': 0 },
  \ { 'path': '~/Sources/nubank', 'depth': 1, 'git_only': 0 },
  \]

"command to change the current tab's workingdir
command! -nargs=1 -complete=dir EP call contabs#project#edit(<q-args>)

"command to open a new tab with some workingdir
command! -nargs=1 -complete=dir TP call contabs#project#tabedit(<q-args>)

"invoke fzf with the list of projects configured in g:contabs#project#locations
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit' }
nnoremap <silent> <Leader>p :call contabs#project#select()<CR>

"invoke fzf with the list of buffers of current tab's workingdir
"the enabled hotkeys are { 'ctrl-t': 'tabedit', 'ctrl-e, <cr>': 'edit', 'ctrl-v': 'vsp', 'ctrl-x': 'sp' }
nnoremap <silent> <Leader>b :call contabs#buffer#select()<CR>
