(setq cmake-ide-packages
      '(cmake-ide
        rtags))


(defun cmake-ide/init-rtags ()
  (use-package rtags
    :init
    (progn)
    :config
    (progn)
    )
  )
(defun cmake-ide/init-cmake-ide ()
  (use-package cmake-ide
    :init
    (progn)
    :config
    (progn
      (dolist (mode '(c++-mode c-mode))
        (spacemacs/declare-prefix-for-mode mode "mc" "compile")
        (spacemacs/declare-prefix-for-mode mode "mg" "goto")
        (spacemacs/declare-prefix-for-mode mode "mp" "project/build system"))
      (dolist (mode '(c++-mode c-mode))
        (spacemacs/set-leader-keys-for-major-mode mode
          "cc" 'cmake-ide-compile
          "pc" 'cmake-ide-run-cmake
          "pC" 'cmake-ide-maybe-run-cmake
          "pd" 'cmake-ide-delete-file))

      (dolist (mode-hook '(c++-mode-hook c-mode-hook))
        (add-hook mode-hook 'cmake-ide/cmake-ide-c-c++-mode-hook))
      )
    )
  )

(defun cmake-ide/cmake-ide-c-c++-mode-hook ()
  (cmake-ide--mode-hook)
  )
