(require 'beacon)

(beacon-mode 1) ;; always beacon!
(setq beacon-color "DeepPink1")
(setq beacon-size 20) ; default 40

;; Beacon on moving cursor to next line
(defun bil/kbd-next-line ()
  (interactive)
  (next-line)
  (beacon-blink))
;; Beacon on moving cursor to prev line
(defun bil/kbd-previous-line ()
  "This is a combo moveline and blink!"
  (interactive)
  (previous-line)
  (beacon-blink))

(provide 'my-beacon)
