;;; packages.el --- martin-web Layer packages File for Spacemacs
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

(defvar martin-web-packages
  '(
    ;; package martin-webs go here
    search-web
    w3
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun martin-web/init-search-web ()
  "Initialize search-web"
  )

(defun martin-web/init-w3 ()
  "Initialize w3"
  )

(defvar martin-web-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function martin-web/init-<package-martin-web>
;;
;; (defun martin-web/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
