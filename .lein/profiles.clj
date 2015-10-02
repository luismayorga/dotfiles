{:user {:plugins      [[cider/cider-nrepl "0.7.0-SNAPSHOT"]
                      [lein-cloverage "1.0.6"]]
        :dependencies [[pjstadig/humane-test-output "0.7.0"]]
        :injections   [(require 'pjstadig.humane-test-output)
                      (pjstadig.humane-test-output/activate!)]}}
