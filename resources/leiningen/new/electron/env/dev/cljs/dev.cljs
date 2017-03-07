(ns ^:figwheel-no-load {{project-ns}}.dev
    (:require [{{project-ns}}.core :as core]
              [{{project-ns}}.test.core :as test-core]))

(core/init!)
