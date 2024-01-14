(fn setup []
  (set vim.g.projectionist_heuristics
       {"deps.edn|project.clj" {"src/*.clj" {:alternate "test/{}_test.clj"}
                                "test/*test.clj" {:alternate "src/{}.clj"}}}))

{: setup}
