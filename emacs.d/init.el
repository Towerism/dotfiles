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


(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")


