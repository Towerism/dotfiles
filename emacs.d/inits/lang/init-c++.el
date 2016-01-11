(require 'init-smartparens)

(defconst my-c++-style
  '("cc-mode"
    (c-offsets-alist . ((innamespace . 0)))))
(c-add-style "my-c++" my-c++-style)

(defun use-my-c++-style ()
  (c-set-style "my-c++"))
(add-hook 'c++-mode-hook
          'use-my-c++-style)

(el-init-provide)
