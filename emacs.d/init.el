;; install enable marmalade and melpa package repos
(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
(package-initialize)

(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'el-init)
(el-init-load "~/.emacs.d/inits"
              :subdirectories '("." "evil" "lang" "version-control" "visual"))

(let ((custom-override-file "~/.emacs.d/custom.el"))
  (when (file-exists-p custom-override-file) (load-file custom-override-file)))
