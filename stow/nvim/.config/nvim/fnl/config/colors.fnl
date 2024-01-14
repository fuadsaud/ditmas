(local colorscheme
  ; :monrovia)
  :rose-pine)

(fn init []
  (vim.cmd {:cmd :colorscheme :args [colorscheme]}))

{: init}
