;;; packages.el --- martin-gdscript Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq martin-gdscript-packages
    '(
      gdscript-mode
      ))

;; List of packages to exclude.
(setq martin-gdscript-excluded-packages '())

;; For each package, define a function martin-gdscript/init-<package-name>
;;
;; (defun martin-gdscript/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun martin-gdscript/init-gdscript-mode ()
  (use-package gdscript-mode
    :config
    (setq gdscript-tabs-mode nil)
    (setq gdscript-tabs-width 2)
    )
  )
