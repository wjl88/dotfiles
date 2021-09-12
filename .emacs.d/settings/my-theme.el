
;; 2019 Feb 04 17:49 - Added from stack overflow
;; Cycle through this set of themes

;; 2019 Aug 08 08:50 - Adding font change on theme change (
(setq my-tfaces '(Monofur Monoid Palatino))
(setq my-cur-tface nil)
(defun cycle-my-tface ()
  "Cycle through a list of Typefaces, my-tfaces"
  (interactive)
  (when my-cur-tface
    (setq my-tfaces (append my-tfaces (list my-cur-tface))))
  (setq my-cur-tface (pop my-tfaces))
  (setq buffer-face-mode-face '(:family 'my-cur-tface))
  (buffer-face-mode)
  )

;; Palatino Linotype
(defun bil ()
  (interactive)
 ;; (setq custom-set-faces '(default ((t (:foreground "#bdbdb3" :background "gray15")))))
  (setq buffer-face-mode-face '(:family "Fixed"))
  (buffer-face-mode)
)


(setq my-themes '(zenburn gruvbox-dark-hard gruvbox-light-hard ahungry))

(setq my-cur-theme nil)
(defun cycle-my-theme ()
  "Cycle through a list of themes, my-themes"
  (interactive)
  (when my-cur-theme
    (disable-theme my-cur-theme)
    (setq my-themes (append my-themes (list my-cur-theme))))
  (setq my-cur-theme (pop my-themes))
  (load-theme my-cur-theme t)
  (bil/dec-line))

(defun bil/dec-line ()
  "Activate the available whatever"
  (interactive)
  (set-face-attribute 'line-number-current-line nil :foreground "SpringGreen" :underline "medium spring green" ))

(provide 'my-theme)
