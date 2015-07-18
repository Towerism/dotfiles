;;; packages.el --- martin-c++ Layer packages File for Spacemacs
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
(setq martin-c++-packages
  '(
    ninja-mode
    )
  )

(defun martin-c++/init-ninja-mode ()
  (add-to-list 'load-path "~/.emacs.d/private/ninja-mode")
  )
