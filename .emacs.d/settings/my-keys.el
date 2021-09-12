
;; Set Custom Keybindings
;; Beacon script bound to nex-prev line command
(global-set-key (kbd "C-n") 'bil/kbd-next-line) ; next line + beacon blink
(global-set-key (kbd "C-p") 'bil/kbd-previous-line) ; prev line + beacon blink

;; Newline Bil-Scripts (from programming) bound to return key
(global-set-key (kbd "<C-return>") 'bil/cpp-line-insert-indent) ; Bind new-line-above-indent to Ctrl-Enter
(global-set-key (kbd "<C-S-return>") 'bil/cpp-line-insert-in-place) ; Bind new-line-above-indent to Ctrl-Enter

;; 2019 Feb 04 14:46 -
;; - Changed C-3 binding to other window command
;; - Added C-4 binding for shell command
(global-set-key (kbd "C-1") 'ibuffer) ; bind C-1 to buffer menu!
(global-set-key (kbd "C-2") 'find-file) ; bind C-2 to find-open menu!
(global-set-key (kbd "C-3") 'other-window) ; bind C-3 to scroll buffers in place
(global-set-key (kbd "C-4") 'shell) ; bind C-4 to scroll buffers in place
(global-set-key (kbd "C-5") 'magit-status) ; bind C-5 to magit-status
;; 2019 Feb 04 15:41 - added C-9 to toggle theme
;; Toggle script from my-themes
;; (global-set-key (kbd "C-8") ')
(global-set-key (kbd "C-9") 'cycle-my-theme)
(global-set-key (kbd "C-0") 'bil)

(provide 'my-keys)
