(require 'init-smartparens)

(defun my-csharp-mode-hook ()
  (fix-indentation)
  )

(add-hook 'csharp-mode-hook
          'my-csharp-mode-hook)

(defun fix-indentation ()
  (setq-local c-basic-offset 2))

(el-init-provide)
