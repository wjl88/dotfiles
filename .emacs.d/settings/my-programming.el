(add-to-list 'load-path "~/.emacs.d/vendor/arduino-mode")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

(show-paren-mode 1) ; Highlight matching parenthesis

(require 'rainbow-delimiters)
(rainbow-delimiters-mode 1)

(require 'company)
(global-company-mode 1)
;; with quickhelp
;; (company-quickhelp-mode 1) ;; needs pos-tip

(require 'iedit) ;; iedit - use C-; and C-' to change all matched symbols

;; (require 'yasnippet)
;;(yas-global-mode 1)

(require 'cedet) ;; built-in c++ ide tools
;; Provided by CEDET package
(setq semantic-default-submodes
      '(;; Perform semantic actions during idle time
        global-semantic-idle-scheduler-mode
        ;; Use a database of parsed tags
        global-semanticdb-minor-mode
        ;; Decorate buffers with additional semantic information
        global-semantic-decoration-mode
        ;; Highlight the name of the function you're currently in
        global-semantic-highlight-func-mode
        ;; show the name of the function at the top in a sticky
        global-semantic-stickyfunc-mode
        ;; Generate a summary of the current tag when idle
        global-semantic-idle-summary-mode
        ;; Show a breadcrumb of location during idle time
        global-semantic-idle-breadcrumbs-mode))
(semantic-mode 1) ;; always semantic mode

;; Bil-namespace helper functions
;; Function definitionss with BIL namespace!
;; Insert line above with indent
(defun bil/cpp-line-insert-indent ()
  "This inserts a line, with indenting"
  (interactive)
  (previous-line)
  (end-of-line)
  (newline-and-indent))
;; Insert newline in current line, keep cursor in place
(defun bil/cpp-line-insert-in-place ()
  (interactive)
  (save-excursion
    (move-beginning-of-line 1)
    (newline)))

(provide 'my-programming)
