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
    cpputils-cmake
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

(defun martin-c++/init-cpputils-cmake ()
  (use-package cpputils-cmake
    :defer t
    :commands
    (cppcm-get-exe-path-current-buffer  cppcm-reload-all)
    :init
    (progn
      (add-hook 'c-mode-common-hook
                (lambda ()
                  (if (derived-mode-p 'c-mode 'c++-mode)
                      (if  (not (or (string-match "^/usr/include/.*" buffer-file-name)
                                    (string-match "^/usr/local/include/.*" buffer-file-name)
                                    (string-match "^/usr/src/linux/include/.*" buffer-file-name)))
                          (cppcm-reload-all))
                    ))))
      :config
      (progn
        (setq cppcm-write-flymake-makefile nil)

        ;; ;; OPTIONAL, avoid typing full path when starting gdb
        ;; (global-set-key (kbd "C-c C-g")
        ;;                 '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))

        ;; OPTIONAL, some users need specify extra flags forwarded to compiler
                                        ;(setq cppcm-extra-preprocss-flags-from-user '("-Iinclude/"))

        (setq cppcm-get-executable-full-path-callback
              (lambda (path type tgt-name)
                ;; path is the supposed-to-be target's full path
                ;; type is either add_executabe or add_library
                ;; tgt-name is the target to built. The target's file extension is stripped
                (message "cppcm-get-executable-full-path-callback called => %s %s %s" path type tgt-name)
                (let ((dir (file-name-directory path))
                      (file (file-name-nondirectory path)))
                  (cond
                   ((string= type "add_executable")
                    (setq path (concat dir "bin/" file)))
                   ;; for add_library
                   (t (setq path (concat dir "lib/" file)))
                   ))
                ;; return the new path
                (message "cppcm-get-executable-full-path-callback called => path=%s" path)
                path))

        ;; (setq cppcm-debug t)
        )
      )
    )

  ;; (defun sam-cedet/init-stickyfunc-enhance ()
  ;;   (use-package stickyfunc-enhance)
  ;;   )
