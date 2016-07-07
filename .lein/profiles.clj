{:user {:dependencies [[pjstadig/humane-test-output "0.7.1"]]
        :injections   [(require 'pjstadig.humane-test-output)
                       (pjstadig.humane-test-output/activate!)]}
 :repl {:plugins      [[refactor-nrepl "2.0.0"]]
        :dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}}
