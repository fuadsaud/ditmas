if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case --hidden'

  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

