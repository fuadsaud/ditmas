{:user
 {:dependencies [[cljdev "0.6.3-SNAPSHOT"]]
  :injections   [(require 'nu)]
  :repositories [["nu-maven" {:url "s3p://nu-maven/releases/"
                              :username [:gpg :env/artifacts_aws_access_key_id]
                              :passphrase [:gpg :env/artifacts_aws_secret_access_key]}]]

  :plugins [[s3-wagon-private "1.2.0"]
            [jonase/eastwood "0.2.4"]
            [lein-gorilla "0.4.0"]]}
  :repl {:plugins [[cider/cider-nrepl "0.14.0-SNAPSHOT"]
                   [refactor-nrepl "2.3.0-SNAPSHOT"]]
         :dependencies [[org.clojure/tools.nrepl "0.2.12"]]
         :repl-options {:timeout 120000}}}
