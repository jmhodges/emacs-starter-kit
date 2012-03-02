(remove-hook 'js-mode-hook 'esk-paredit-nonlisp)

(font-lock-remove-keywords 'espresso-mode '("\\(function *\\)("))
(provide 'javascript_mode_config)
