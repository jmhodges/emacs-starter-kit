(require 'scala-mode-auto)

(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))
(add-hook 'scala-mode-hook 'run-coding-hook)

(provide 'scala_mode_config)