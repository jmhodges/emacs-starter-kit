(provide 'java_mode_config)
(defun jmhodges-java-identation ()
  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (c-add-style "mine" '("java"
                            (c-basic-offset . 4)
                            (c-hanging-braces-alist
                             ((substatement-open)
                              (block-close . c-snug-do-while)
                              (extern-lang-open after)
                              (inexpr-class-open after)
                              (inexpr-class-close before)))
                            (c-offsets-alist
                             (substatement-open . 0))
                             ))
  (c-set-style "mine")

  )
(add-hook 'java-mode-hook 'run-coding-hook)
(add-hook 'java-mode-hook 'jmhodges-java-identation)
