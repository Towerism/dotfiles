(setq-default make-backup-files nil)
(setq-default auto-save-default nil)

(let ((width 2))
  (setq-default
   indent-tabs-mode nil
   c-basic-offset width
   perl-indent-level width
   js-indent-level width
   sh-basic-offset width
   sh-indentation width))

(dtrt-indent-mode 1) ;; infer indentation on a per-buffer basis

;; enable commands disabled by default
(put 'narrow-to-region 'disabled nil)

(el-init-provide)
