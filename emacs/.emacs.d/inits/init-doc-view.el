(require 'doc-view)
(add-hook 'doc-view-mode-hook 'my-doc-view-mode-hook)

(defun my-doc-view-mode-hook ()
  (auto-revert-mode))

(define-key doc-view-mode-map (kbd "j") 'doc-view-next-line-or-next-page)
(define-key doc-view-mode-map (kbd "k") 'doc-view-previous-line-or-previous-page)
(define-key doc-view-mode-map (kbd "h") 'image-backward-hscroll)
(define-key doc-view-mode-map (kbd "l") 'image-forward-hscroll)

(el-init-provide)
