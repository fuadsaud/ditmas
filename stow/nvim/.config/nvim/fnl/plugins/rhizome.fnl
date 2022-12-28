(module plugins.rhizome
  {autoload {a aniseed.core
             pickers telescope.pickers
             finders telescope.finders
             actions telescope.actions
             action_state telescope.actions.state
             config telescope.config}})

(local *config* {:roots []
                 :telescope_options {}})

(fn normalize_path
  [path]
  (-> path
      vim.fn.expand
      vim.fn.resolve))

(fn path_match?
  [path_a path_b]
  (= (normalize_path path_a)
     (normalize_path path_b)))

(fn find_in_known_roots
  [known_roots input_path]
  (a.first (a.filter (fn [root] (path_match? root.path input_path)) known_roots)))

(fn derive_root
  [known_roots input_path]
  (or (find_in_known_roots known_roots input_path)
      {:path input_path}))

(fn open
  [cmd cwd entrypoint]
  (vim.cmd {:cmd cmd :args [entrypoint]})
  (vim.cmd {:cmd :tcd :args [cwd]}))

(fn open_root
  [cmd root]
  (open cmd (. root :path) (or (a.str (. root :path) "/" (. root :entrypoint))
                               (. root :path))))

(defn open_in_current_tab
  [input_path]
  (open_root :edit (derive_root (. *config* :roots) input_path)))

(defn open_in_new_tab
  [input_path]
  (open_root :tabedit (derive_root (. *config* :roots) input_path)))

(defn open_root_picker []
  (let [{:roots roots
         :telescope_options telescope_options} *config*
        finder (finders.new_table {:results roots
                                   :entry_maker (fn [entry]
                                                  {:value entry
                                                   :display (. entry :path)
                                                   :ordinal (. entry :path)})})
        sorter (config.values.generic_sorter telescope_options)
        handler (fn [prompt_bufnr map]
                  (actions.select_default:replace
                    (fn []
                      (actions.close prompt_bufnr)

                      (let [selection (action_state.get_selected_entry)]
                        (open_in_new_tab (. selection :value :path))))))
        picker (pickers.new telescope_options {:prompt_title "Roots"
                                               :finder finder
                                               :sorter sorter
                                               :attach_mappings handler})]
    (picker:find)))

(defn setup
  [{:roots roots
    :telescope_options telescope_options}]
  (tset *config* :roots roots)
  (tset *config* :telescope_options telescope_options))

(comment
  (local zsh_path "/Users/fuad/.config/zsh")
  (derive_root (. *config* :roots) zsh_path)
  (setup {:roots [{:path "~/Source/fuadsaud/Monrovia"}
                  {:path "~/Source/fuadsaud/fuadsaud.github.io"}
                  {:path "~/.ditmas"}
                  {:path "~/.config/nvim"}
                  {:path "~/.config/zsh" :entrypoint ".zshrc"}]})
  (open_root_picker)
  (open_in_new_tab zsh_path))
