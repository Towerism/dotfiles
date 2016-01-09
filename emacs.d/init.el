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

(setq make-backup-files nil)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(let ((width 2))
  (setq-default
   indent-tabs-mode nil
   c-basic-offset width
   perl-indent-level width
   js-indent-level width))

(dolist (config-file
         '("evil"
           "helm"
           "magit"
           "powerline"
           "projectile"
           "theme"
           "tramp"))
  (load-file
   (format "~/.emacs.d/config/%s.el" config-file)))

(let ((custom-override-file "~/.emacs.d/custom.el"))
  (when (file-exists-p custom-override-file) (load-file custom-override-file)))
