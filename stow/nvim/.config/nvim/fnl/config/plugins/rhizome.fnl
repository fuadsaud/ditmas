(local {: autoload} (require :nfnl.module))
(local rhizome (autoload :rhizome))

(fn setup []
  (rhizome.setup {:roots [{:path "~/Sources/fuadsaud/Monrovia"}
                          {:path "~/Sources/fuadsaud/fuadsaud.github.io"}
                          {:path "~/.ditmas"}
                          {:path "~/Sources/fuadsaud/rhizome.nvim"}
                          {:path "~/.config/zsh" :entrypoint ".zshrc"}]}))

{: setup}
