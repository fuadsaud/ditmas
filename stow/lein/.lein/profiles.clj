{:user {:dependencies        [[cljdev "0.7.2"]]
        :injections          [(require 'nu)]
        :repositories        [["central"  {:url "https://repo1.maven.org/maven2/" :snapshots false}]
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-maven" {:url    "s3p://nu-maven/releases/"
                                           :region "sa-east-1"}]]
        :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
        :plugins             [[s3-wagon-private "1.3.1" :upgrade false]
                              [lein-ancient "0.6.15"]]}
 :repl {:plugins      [[cider/cider-nrepl "0.21.0"]
                       [refactor-nrepl "2.4.0"]
                       [lein-cljfmt "0.6.4"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                       [cljfmt "0.6.3"]
                       [alembic "0.3.2"]
                       [mvxcvi/puget "1.1.0"]]
        :repl-options {:timeout 120000}}}
