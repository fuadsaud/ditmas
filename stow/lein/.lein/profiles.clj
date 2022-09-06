{:user {:dependencies [[org.clojure/tools.namespace "1.3.0"]
                       [hashp "0.2.1"]
                       [com.github.liquidz/antq "RELEASE"]]

        :plugins [[lein-ancient "1.0.0-RC3"]
                  [lein-cprint "1.3.3"]
                  [com.jakemccrary/lein-test-refresh "0.25.0"]
                  [nrepl "0.9.0"]
                  [cljfmt "0.8.2"]
                  [cider/cider-nrepl "0.28.5"]
                  [refactor-nrepl "3.5.4"]]

        ; :aliases {"outdated" ["run" "-m" "antq.core"]}

        :injections [(require 'hashp.core)]}}
