(provide 'python_mode_config)
(defun python-mode-hook ()
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  )
(add-hook 'python-mode-hook 'run-coding-hook)
(add-to-list 'auto-mode-alist '("SConscript" . python-mode))
(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))
(add-to-list 'auto-mode-alist '("BUILD" . python-mode))
