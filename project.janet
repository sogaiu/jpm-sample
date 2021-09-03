(declare-project
  :name "jpm-sample"
  :url "https://github.com/sogaiu/jpm-sample"
  :repo "git+https://github.com/sogaiu/jpm-sample.git"
  :dependencies ["https://github.com/janet-lang/spork"])

(def proj-root
  (os/cwd))

(def src-root
  (string proj-root "/sample"))

(declare-source
  :source @["sample"])

(declare-executable
  :name "sample"
  :entry (string src-root "/main.janet")
  :install true)

