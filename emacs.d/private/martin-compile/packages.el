;;; packages.el --- martin-compile Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Martin Fracker & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq martin-compile-packages
    '(
      ansi-color
      ))

;; List of packages to exclude.
(setq martin-compile-excluded-packages '())

(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only)
  )

(defun martin-compile/init-ansi-color ()
  (add-hook 'compilation-filter-hook 'colorize-compilation-buffer)
  )
;; For each package, define a function martin-compile/init-<package-name>
;;
;; (defun martin-compile/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
