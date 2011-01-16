(require 'full-ack)

(defun editorial-control () ; making full-ack do what I want
  "Check for things I hate in my own writing."
  (interactive)
  (ack-abort)
  (let ((buffer (get-buffer-create "editorial-control"))
        (search-file (buffer-file-name))
        (phrase-file  "useless_phrases.txt")
        (inhibit-read-only t)
        (phrase-regexes)
        )
    (setq next-error-last-buffer buffer)
    (when (file-readable-p phrase-file)
      (with-temp-buffer
        (insert-file-contents phrase-file)
        (setq phrase-regexes (split-string (buffer-string) "\n" t))
        ))
     (setq regex (concat "(" (mapconcat 'identity phrase-regexes "|") ")"))
     (setq arguments
           (append ack-arguments (nconc (ack-arguments-from-options regex)
                                        (list "-i" "-H" regex search-file))))
     (with-current-buffer buffer
       (erase-buffer)
       (ack-mode)
       (setq buffer-read-only t)
       (font-lock-fontify-buffer)
       (display-buffer (current-buffer))
       )
     (setq ack-process
           (apply 'start-process "ack" buffer ack-executable arguments))
     (set-process-sentinel ack-process 'ack-sentinel)
     (set-process-query-on-exit-flag ack-process nil)
     (set-process-filter ack-process 'ack-filter)
  )
  )
(provide 'writing)
