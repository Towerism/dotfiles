(setq comint-prompt-read-only t
      comint-process-echoes nil)

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

(evil-leader/set-key
  "ss" 'shell)

(el-init-provide)
