(add-to-list 'load-path "~/.emacs.d/jmhodges/ensime_2.8.1-0.3.9/elisp/")
(require 'ensime)

;; Commented out because of all the 2.7 work I do. IIRC, this breaks
;; things.
; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(provide 'ensime_config)
