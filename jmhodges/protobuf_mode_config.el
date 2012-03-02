(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

(defconst my-protobuf-style
     '((c-basic-offset . 2)
       (indent-tabs-mode . nil)))

   (add-hook 'protobuf-mode-hook
     (lambda () (c-add-style "my-protobuf-style" my-protobuf-style t)))

(provide 'protobuf_mode_config)
