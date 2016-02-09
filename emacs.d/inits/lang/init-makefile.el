(add-hook 'makefile-mode-hook
          'my-makefile-mode-hook)

(defun my-makefile-mode-hook ()
  (setq-local yas-indent-line 'fixed))

(el-init-provide)
