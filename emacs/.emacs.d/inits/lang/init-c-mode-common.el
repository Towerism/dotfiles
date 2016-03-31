(require 'init-smartparens)

(sp-local-pair '(c++-mode c-mode java-mode csharp-mode) "{" nil
               :post-handlers '((my-create-newline-and-enter "RET")))

(defun my-create-newline-and-enter (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(el-init-provide)
