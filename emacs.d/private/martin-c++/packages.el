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
    auto-complete-clang
    ninja-mode
    )
  )

(defun martin-c++/init-ninja-mode ()
  (add-to-list 'load-path "~/.emacs.d/private/ninja-mode")
  )

(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(defun martin-c++/init-auto-complete-clang ()
  (add-to-list 'load-path "~/AC")
  (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories "~/AC/ac-dict")

  (require 'auto-complete-clang)

  (setq ac-auto-start nil)
  (setq ac-quick-help-delay 0.5)
  (define-key ac-mode-map  [(control tab)] 'auto-complete)
  (my-ac-config)
  )
