(require 'scala-mode-auto)

(defun jmhodges-scala-mode-config-hook ()
  (setq paragraph-start "^\\s-*\\#\\s-*\\\\\\(arg\\|ret\\).*$")
  (yas/minor-mode-on)
  ;; (define-key scala-mode-map (kbd "M-q") 'c-fill-paragraph)
  )

(add-hook 'scala-mode-hook
          'jmhodges-scala-mode-config-hook)
(add-hook 'scala-mode-hook 'run-coding-hook)



(provide 'scala_mode_config)
