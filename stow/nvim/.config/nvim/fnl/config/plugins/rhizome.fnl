(module config.plugins.rhizome
  {autoload {rhizome rhizome}})

(defn config []
  (rhizome.setup {:roots [{:path "~/Sources/fuadsaud/Monrovia"}
                          {:path "~/Sources/fuadsaud/fuadsaud.github.io"}
                          {:path "~/.ditmas"}
                          {:path "~/Sources/fuadsaud/rhizome.nvim"}
                          {:path "~/.config/zsh" :entrypoint ".zshrc"}]}))
