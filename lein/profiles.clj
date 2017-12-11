{:user
 {:dependencies [[cljdev "0.6.7-SNAPSHOT"]]

  :injections   [(require 'nu)]

  :repositories [["nu-maven" {:url "s3p://nu-maven/releases/"
                              :username [:gpg :env/artifacts_aws_access_key_id]
                              :passphrase [:gpg :env/artifacts_aws_secret_access_key]}]]

  :plugins [[s3-wagon-private "1.3.0"]
            [jonase/eastwood "0.2.4"]
            [com.jakemccrary/lein-test-refresh "0.21.1"]
            [venantius/ultra "0.5.2"]]}

  :repl {:plugins [[cider/cider-nrepl "0.15.1"]
                   [refactor-nrepl "2.3.1"]]
         :dependencies [[org.clojure/tools.nrepl "0.2.12"]]
         :repl-options {:timeout 120000}}}
