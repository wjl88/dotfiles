
;; 2019 Feb 04 05:06 - Debugged the config file tree loading. Theme is the only custom-set variable
;; Shorted Config
;;(desktop-save-mode 1)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(package-initialize) ;; DO NOT REMOVE THIS LINE...
 
;; 2020 Feb 19 - AucTeX configs 
;; ... will need to dump within own folder at some point
;; ... to ensure that the everything is together when porting config around
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(setq TeX-save-query nil)
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)

;; Test for the settings folders
;;first, settings dir is added to the load path
(defvar settings-dir
  (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
 
;;require load file if it contains
(require 'my-beacon)
(require 'my-general)
(require 'my-programming)
(require 'my-keys)
(require 'my-snippets)
(require 'my-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" "2b9dc43b786e36f68a9fd4b36dd050509a0e32fe3b0a803310661edb7402b8b6" "8e797edd9fa9afec181efbfeeebf96aeafbd11b69c4c85fa229bb5b9f7f7e66c" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "7d2e7a9a7944fbde74be3e133fc607f59fdbbab798d13bd7a05e38d35ce0db8d" "c856158cc996d52e2f48190b02f6b6f26b7a9abd5fea0c6ffca6740a1003b333" "ef98b560dcbd6af86fbe7fd15d56454f3e6046a3a0abd25314cfaaefd3744a9e" "62c81ae32320ceff5228edceeaa6895c029cc8f43c8c98a023f91b5b339d633f" "a5956ec25b719bf325e847864e16578c61d8af3e8a3d95f60f9040d02497e408" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "4bafb7bf80f2f3f93bba093fe7ba68f1209a29bedb9399dcff4fd5feb65ae08f" default)))
 '(doc-view-continuous t)
 '(fci-rule-color "#383838")
 '(magit-commit-arguments (quote ("--all" "--verbose")))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t) (shell . t))))
 '(org-babel-tangle-lang-exts
   (quote
    (("emacs-lisp" . "el")
     ("elisp" . "el")
     ("bash" . "sh"))))
 '(package-selected-packages
   (quote
    (pdf-tools yasnippet auctex ahungry-theme magit gruvbox-theme zenburn-theme which-key rainbow-delimiters iedit company beacon)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 142 :width normal :foundry "UKWN" :family "Victor Mono"))))
 '(flyspell-incorrect ((t (:underline (:color "magenta" :style wave)))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "SpringGreen"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "tomato"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "khaki"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "PaleGreen"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DodgerBlue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "DeepPink")))))
