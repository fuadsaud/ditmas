if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo '~/.local/share/nvim/site/autoload/plug.vim' --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

function! s:plug_gx()
  let line = getline('.')
  let name = split(split(line, '/')[1], "'")[0]
  let uri  = get(get(g:plugs, name, {}), 'uri', '')
  echo uri
  if uri !~ 'github.com'
    return
  endif
  let repo = matchstr(uri, '[^:/]*/'.name)
  let url  = 'https://github.com/'.repo
  call netrw#BrowseX(url, 0)
endfunction

augroup PlugGx
  autocmd!
  autocmd FileType vim nnoremap <buffer> <silent> gx :call <sid>plug_gx()<cr>
augroup END
