(module config.plugins.rhizome
  {autoload {rhizome rhizome}})

(defn init []
  (rhizome.setup {:roots [{:path "~/Source/fuadsaud/Monrovia"}
                          {:path "~/Source/fuadsaud/fuadsaud.github.io"}
                          {:path "~/.ditmas"}
                          {:path "~/.config/zsh" :entrypoint ".zshrc"}]}))
