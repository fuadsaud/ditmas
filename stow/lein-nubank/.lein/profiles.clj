{:user {:dependencies        [[cljdev "0.8.0"]]
        :injections          [(require 'nu)]
        :repositories        [["central"  {:url "https://repo1.maven.org/maven2/" :snapshots false}]
                              ["clojars"  {:url "https://clojars.org/repo/"}]
                              ["nu-maven" {:url    "s3p://nu-maven/releases/"
                                           :region "sa-east-1"}]]
        :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
        :plugins             [[s3-wagon-private "1.3.1" :upgrade false]
                              [lein-ancient "0.6.15"]]}}
