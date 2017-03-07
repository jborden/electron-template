(ns {{project-ns}}.test.core
  (:require [cljs.test :refer-macros [deftest is testing run-tests]]
            [{{project-ns}} .core :as core]))

(deftest a-test
  (testing "FIXME, I fail."
    (is (= 0 1))))
