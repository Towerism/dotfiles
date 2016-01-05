;; install enable marmalade and melpa package repos
(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
  (package-initialize)

;; enable auto loading of files in the config directory
(require 'load-dir)
(setq load-dirs "~/.emacs.d/config")
