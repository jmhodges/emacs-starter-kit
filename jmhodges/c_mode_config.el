
(defun nginx-c-style ()
  (setq tab-width 4)
  (c-set-style "nginx")
  )

(c-add-style "nginx" '( ; k&r but c-basic-offset of 4
                       (c-basic-offset . 4)
                       (c-comment-only-line-offset . 0)
                       (c-offsets-alist
                        (statement-block-intro . +)
                        (knr-argdecl-intro . 0)
                        (substatement-open . 0)
                        (substatement-label . 0)
                        (label . 0)
                        (statement-cont . +)
                        )
                       )
             )

(add-hook 'c-mode-common-hook 'run-coding-hook)


(provide 'c_mode_config)
