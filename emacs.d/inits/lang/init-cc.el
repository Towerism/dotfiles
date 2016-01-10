(defconst c++-do-not-indent-inside-namespaces
  '("cc-mode"
    (c-offsets-alist . ((innamespace . [0])))))
(c-add-style "suppress-namespace-indent" c++-do-not-indent-inside-namespaces)

(defun c++-suppress-indentation-inside-namespaces ()
  (c-set-style "suppress-namespace-indent"))
(add-hook 'c++-mode-hook
          'suppress-indentation-inside-namespaces)

(el-init-provide)
