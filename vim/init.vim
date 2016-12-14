source ~/.vimrc

function! OnTabEnter(path)
  echo "path: " . a:path
  echo "is: " . isdirectory(a:path)
  if isdirectory(a:path)
    let dirname = a:path
    echo "dir tcd " . dirname
  else
    let dirname = fnamemodify(a:path, ":h")
    echo "file tcd " . dirname
  endif
  execute "tcd ". dirname
endfunction()

autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))
