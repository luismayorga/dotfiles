{:user {:dependencies [[pjstadig/humane-test-output "0.7.1"]]
;        :injections [(require 'pjstadig.humane-test-output)
                     ;(pjstadig.humane-test-output/activate!)]
        }
 :test {:plugins       [[venantius/ultra "0.5.0"]]}
 :repl {:dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}}
