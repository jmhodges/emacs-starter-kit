(defun merc ()
  (interactive)
  (require 'erc-services)
  (setq erc-autojoin-channels-alist
        '(("freenode.net" "#rubinius" "#cassandra" "#avro" "#leanintoit buttheadz")))
  (load "erc_pass.el")
  (setq erc-keywords '("\\bjeff\\b" "\\bhodges\\b" "\\bhaj+i+s*\\b"))
  (erc :server "irc.freenode.net" :port 6667 :nick "jmhodges" :password freenode-nick-pass)
  )

(provide 'erc_config)
