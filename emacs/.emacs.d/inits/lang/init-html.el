(require 'yasnippet)
(require 'web-mode)

(defun my-html-mode-hook ()
  (yas-minor-mode)
  (web-mode)
  )
(add-hook 'html-mode-hook 'my-html-mode-hook)

(el-init-provide)
