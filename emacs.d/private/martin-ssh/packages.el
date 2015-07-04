;;; packages.el --- martin-ssh Layer packages File for Spacemacs
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
(setq martin-ssh-packages
    '(
      keychain-environment
      ))

;; List of packages to exclude.
(setq martin-ssh-excluded-packages '())

(defun martin-ssh/init-keychain-environment ()
  (keychain-refresh-environment)
  )

;; For each package, define a function martin-ssh/init-<package-name>
;;
;; (defun martin-ssh/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
