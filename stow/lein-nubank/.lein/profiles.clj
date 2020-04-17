{:user
 {:dependencies        [[cljdev "0.9.0"]]

  :injections          [(require 'nu)]

  :repositories        [["central"  {:url "https://repo1.maven.org/maven2/"
                                     :snapshots false}]
                        ["clojars"  {:url "https://clojars.org/repo/"}]
                        ["nu-maven" {:url "s3p://nu-maven/releases/"
                                     :region "sa-east-1"}]]

  :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]

  :plugins             [[s3-wagon-private "1.3.1" :upgrade false]
                        [venantius/ultra "0.6.0"]
                        [lein-ancient "0.6.15"]
                        [lein-auto "0.1.3"]
                        [com.jakemccrary/lein-test-refresh "0.24.1"]]

  :repl-options {:prompt (constantly "user profile yeah=>")
                 :init (do (println "Starting Propel...")
                           (require 'propel.core)
                           (let [prepl (propel.core/start-prepl! {:port-file? true})]
                             (println "pREPL server started on port"
                                      (:port prepl)
                                      "on host"
                                      (:address prepl))))}}

 :repl
 {:plugins      [[cider/cider-nrepl "0.21.1"]
                 [refactor-nrepl "2.4.0"]
                 [lein-cljfmt "0.6.4"]]

  :dependencies [[org.clojure/tools.namespace "0.3.1"]
                 [nrepl "0.6.0"]
                 [olical/propel "1.3.0"]
                 [mvxcvi/puget "1.1.1"]]}

 :propel
 {:repl-options {:prompt (constantly "CHIDDDDY=>")
                 :init (do (println "Starting Propel...")
                           (require 'propel.core)
                           (let [prepl (propel.core/start-prepl! {:port-file? true})]
                             (println "pREPL server started on port"
                                      (:port prepl)
                                      "on host"
                                      (:address prepl))))}}}
