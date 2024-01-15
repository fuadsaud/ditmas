(fn init []
  (print "HEYO")
  (set vim.opt.shell (os.getenv :SHELL))

  (set vim.opt.encoding :utf-8)

  (set vim.opt.visualbell true)
  (set vim.opt.showmode false)
  (set vim.opt.showmatch true)
  (set vim.opt.title true)

  (set vim.opt.number true)
  (set vim.opt.relativenumber true)

  (set vim.opt.cursorline true)
  (set vim.opt.colorcolumn [80 100 120])
  (set vim.opt.fillchars {:vert "│"})
  (set vim.opt.list true)
  (set vim.opt.listchars {:tab "▶-"
                          :trail "•"
                          :extends "»"
                          :precedes "«"})

  (set vim.opt.splitbelow true)
  (set vim.opt.splitright true)

  (set vim.opt.clipboard :unnamedplus)

  (set vim.opt.wildmode [:longest :full])

  (set vim.opt.mouse :a)

  (set vim.opt.swapfile false)
  (set vim.opt.undofile true)

  ;; whitespace
  (set vim.opt.autoindent true)
  (set vim.opt.copyindent true)
  (set vim.opt.wrap false)

  (set vim.opt.tabstop 2)
  (set vim.opt.softtabstop 2)
  (set vim.opt.shiftwidth 2)
  (set vim.opt.shiftround true)

  ;; searching
  (set vim.opt.ignorecase true)
  (set vim.opt.smartcase true)
  (set vim.opt.gdefault true)
  (set vim.opt.inccommand :split)

  ;; folding
  (set vim.opt.foldlevelstart 10)
  (set vim.opt.foldnestmax 10)
  (set vim.opt.foldmethod :syntax)

  ;; completion
  (set vim.opt.completeopt [:menu :menuone :noselect])
  (vim.opt.shortmess:append {:c true}))


{: init}
