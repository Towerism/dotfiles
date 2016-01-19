(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(require 'el-init)
(el-init-load "~/.emacs.d/inits"
              :subdirectories '("." "evil" "lang" "version-control" "visual"))

(let ((custom-override-file "~/.emacs.d/custom.el"))
  (when (file-exists-p custom-override-file) (load-file custom-override-file)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/notes/geog/203/todo.org" "~/notes/csce/481/todo.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
