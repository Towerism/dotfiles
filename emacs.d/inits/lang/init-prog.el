(require 'init-smartparens)

(defun my-prog-mode-hook ()
  (smartparens-mode)
  (yas-minor-mode))

(add-hook 'prog-mode-hook
          'my-prog-mode-hook)

(el-init-provide)
