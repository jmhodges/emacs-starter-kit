(require 'groovy-mode)
(add-hook 'groovy-mode-common-hook 'run-coding-hook)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(provide 'groovy_mode_config)