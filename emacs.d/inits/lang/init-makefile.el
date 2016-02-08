(add-hook 'makefile-mode-hook
          'my-makefile-mode-hook)

(defun my-makefile-mode-hook ()
  (setq yas-indent-line 'fixed))

(el-init-provide)
