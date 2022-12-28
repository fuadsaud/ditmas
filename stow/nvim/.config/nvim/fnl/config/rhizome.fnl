(module config.rhizome
  {autoload {rhizome plugins.rhizome}})

(defn init []
  (rhizome.setup {:roots [{:path "~/Source/fuadsaud/Monrovia"}
                          {:path "~/Source/fuadsaud/fuadsaud.github.io"}
                          {:path "~/.ditmas"}
                          {:path "~/.config/zsh" :entrypoint ".zshrc"}]}))
