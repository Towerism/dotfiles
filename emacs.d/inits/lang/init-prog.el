(require 'yasnippet)
(require 'init-smartparens)

(defun my-prog-mode-hook ()
  (smartparens-mode)
  (yas-minor-mode))

(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-reload-all)
(add-hook 'prog-mode-hook
          'my-prog-mode-hook)
