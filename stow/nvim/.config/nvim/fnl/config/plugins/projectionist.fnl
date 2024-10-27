(fn setup []
  (set vim.g.projectionist_heuristics
       {"deps.edn|project.clj" {"src/*.clj" {:alternate "test/{}_test.clj"}
                                "test/*test.clj" {:alternate "src/{}.clj"}}

        "package.json" {
                        "*.js" {:alternate "{}.test.js"}
                        "*.ts" {:alternate "{}.test.ts"}
                        "*.jsx" {:alternate "{}.test.jsx"}
                        "*.tsx" {:alternate "{}.test.tsx"}

                        "*.test.js" {:alternate "{}.js"}
                        "*.test.ts" {:alternate "{}.ts"}
                        "*.test.jsx" {:alternate "{}.jsx"}
                        "*.test.tsx" {:alternate "{}.tsx"}}}))


{: setup}
