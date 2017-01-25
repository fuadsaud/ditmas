{:user
 {:dependencies [[cljdev "0.4.0-SNAPSHOT"]]
  :injections   [(require 'nu)]
  :repositories [["nu-maven" {:url "s3p://nu-maven/releases/"
                               :username [:gpg :env/artifacts_aws_access_key_id]
                               :passphrase [:gpg :env/artifacts_aws_secret_access_key]}]]

  :plugins [[s3-wagon-private "1.2.0"]]}
  :repl {:plugins [[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                   [refactor-nrepl "2.0.0-SNAPSHOT"]]
         :dependencies [[org.clojure/tools.nrepl "0.2.12"]]
         :repl-options {:timeout 120000}}}
