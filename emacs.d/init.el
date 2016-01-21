(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'el-init)
(el-init-load "~/.emacs.d/inits"
              :subdirectories '("." "evil" "lang" "version-control" "visual"))

(let ((custom-override-file "~/.emacs.d/custom.el"))
  (when (file-exists-p custom-override-file) (load-file custom-override-file)))
