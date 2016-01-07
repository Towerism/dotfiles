;; install enable marmalade and melpa package repos
(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package cask)
(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)
(use-package pallet)

(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")


