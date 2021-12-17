augroup filetypes
  autocmd!
  autocmd FileType c          setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType cpp        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cpp        setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType css        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType go         setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType haskell    setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType java       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType make       setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType objc       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType python     setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType scss.css   setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType styl       setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab

  autocmd FileType markdown,text,tex DittoOn

  autocmd Filetype gitcommit  setlocal spell textwidth=72

  autocmd BufNewFile,Bufread *.hl        setfiletype clojure
  autocmd BufNewFile,BufRead *.json.base setfiletype json
  autocmd BufNewFile,BufRead *.rss       setfiletype xml
  autocmd BufNewFile,BufRead *.skim      setfiletype slim
  autocmd BufNewFile,BufRead *.styl      setfiletype css

  " automatic gofmt
  autocmd FileType go nmap <buffer> = <Esc>:Fmt<CR>

  " support for json c
  autocmd FileType json syntax match Comment +\/\/.\+$+
augroup END
