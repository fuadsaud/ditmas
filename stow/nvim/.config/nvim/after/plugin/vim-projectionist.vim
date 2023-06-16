let g:projectionist_heuristics = {
                  \   "deps.edn|project.clj": {
                  \     "src/*.clj": { "alternate": "test/{}_test.clj" },
                  \     "test/*_test.clj": { "alternate": "src/{}.clj" }
                  \   }
                  \ }
