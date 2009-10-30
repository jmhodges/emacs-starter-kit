(require 'url-util)
(defun url-encode-region ()
  "Replace the current region text with a url-encoded version of
the same data."
  (interactive)
  (let ((beg (region-beginning))
        (end (region-end))
        )
    (save-excursion
      (goto-char beg)
      (insert (url-hexify-string (delete-and-extract-region beg end)))
      )
    )
  )

(defun url-decode-region ()
  "Replace the current region text with a url-decoded version of
the same data."
  (interactive)
  (let ((beg (region-beginning))
        (end (region-end))
        )
    (save-excursion
      (goto-char beg)
      (insert (url-unhex-string (delete-and-extract-region beg end)))
      )
    )
  )

(defun humanize-region ()
  "Make that shit awesome"
  (interactive)
  (let ((beg (region-beginning))
        (end (region-end))
        )
    (save-excursion
      (goto-char beg)
      (insert
       (url-unhex-string
        (replace-regexp-in-string "&" "\n" (delete-and-extract-region beg end))))
      )))
  

(global-set-key (kbd "C-c h") 'humanize-region)
(global-set-key (kbd "C-c o") 'occur)

(provide 'url_decode)