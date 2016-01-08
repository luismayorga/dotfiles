{:user {:plugins      [[lein-cloverage "1.0.6"]]
        :dependencies [[pjstadig/humane-test-output "0.7.0"]]
        :injections   [(require 'pjstadig.humane-test-output)
                       (pjstadig.humane-test-output/activate!)]}
 :repl {:plugins      [[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                       [refactor-nrepl "2.0.0-SNAPSHOT"]]
        :dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}}
