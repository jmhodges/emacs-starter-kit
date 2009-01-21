; Avoiding backspace
(global-set-key "\C-w" 'backward-kill-word)
; And rebind kill-region to these
(global-set-key "\C-x\C-k" 'kill-region)
; I don't agree with Yegge, yet.
; (global-set-key "\C-c\C-k" 'kill-region)


(add-to-list 'load-path "~/emacs/jmhodges")
(require 'font_config)
(require 'python_mode_config)
(require 'haml_mode_config)
(require 'yegge_stuff)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)