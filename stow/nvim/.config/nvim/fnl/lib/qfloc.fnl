(local {: autoload} (require :nfnl.module))
(local nfnl-core (autoload :nfnl.core))

(fn get
  [target]
  (case target
    :c (vim.fn.getqflist)
    :l (vim.fn.getloclist)
    _ (error (.. "Unrecognized target " target))))

(fn name
  [target]
  (. {:c :quickfix
      :l :location}
     target))

(fn open?
  [target]
  (nfnl-core.some
    #(= 1 (. $1 (name target)))
    (vim.fn.getwininfo)))

(fn open!
  [target]
  (if (nfnl-core.empty? (get target))
    (vim.notify (.. (name target) "list is empty") vim.log.levels.WARN)
    (vim.cmd (.. target "open"))))

(fn close!
  [target]
  (vim.cmd (.. target "close")))

(fn toggle
  [target]
  (if (open? target)
    (close! target)
    (open! target)))

{: toggle
 : close!
 : open!
 : open?
 : name
 : get}
