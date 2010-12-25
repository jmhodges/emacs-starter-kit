(defun jmhodges-java-identation ()
  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (c-add-style "java-mine" '(
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
  (c-set-style "java-mine")

  )

(add-hook 'java-mode-hook 'jmhodges-java-identation)
(provide 'java_mode_config)
