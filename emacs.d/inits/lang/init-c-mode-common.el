(require 'dtrt-indent)
(require 'init-smartparens)

(defun my-c-mode-common-hook ()
  (smartparens-mode)
  (dtrt-indent-mode))

(add-hook 'c-mode-common-hook
          'my-c-mode-common-hook)

(sp-local-pair '(c++-mode c-mode java-mode) "{" nil
               :post-handlers '((my-create-newline-and-enter-sexp "RET")))

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(el-init-provide)
