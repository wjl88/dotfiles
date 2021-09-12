
(setq inhibit-splash-screen t
      initial-scratch-message "#\n#   org scratch   #\n#\n\n\n"
      initial-major-mode 'org-mode
      make-backup-files nil ;; Stop creating backup # files
      )


(global-visual-line-mode 1) ;; Always wrap lines
(global-display-line-numbers-mode 1)
(fset 'yes-or-no-p 'y-or-n-p) ;; Replace yes/no prompt with single letter y/n
(scroll-bar-mode -1) ;; Disable Scroll bar
(tool-bar-mode -1) ;; Disable Toolbar
(menu-bar-mode -1) ;; Desable Menu bar
(delete-selection-mode t) ;; Delete marked area
(blink-cursor-mode -1) ;; no cursor blinking

(require 'which-key)
(which-key-mode 1)

(flyspell-mode 1)

;; (require 'pos-tip)
;;(defun bil/pos-t ip-test()
  ;; (interactive)
  ;; (pos-tip-show 'test)
  ;; )
 
;; Org Mode Option Settings
(setq org-startup-indented t) ; have org mode in indent mode
(setq org-hide-leading-stars t) ; Remove leading bullets
(setq org-indent-indentation-per-level 3) ; add extra depth to the indentation level in org
(setq org-hide-emphasis-markers t)

(provide 'my-general)
