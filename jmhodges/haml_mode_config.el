(provide 'haml_mode_config)

(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq indent-tabs-mode nil)
            ))

(column-number-mode 't)