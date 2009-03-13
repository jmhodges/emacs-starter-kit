(provide 'python_mode_config)
(add-hook 'python-mode-hook 'coding-hook)
(add-to-list 'auto-mode-alist '("SConscript" . python-mode))
(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))