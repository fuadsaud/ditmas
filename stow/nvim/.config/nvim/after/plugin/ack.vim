if executable('rg')
  let g:ackprg = 'rg --vimgrep --smart-case --hidden'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case --hidden'
endif

cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
