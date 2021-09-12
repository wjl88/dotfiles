
(defvar current-date-time-format "%a %b %d %H:%M:%S %Z %Y"
  "Format of date to insert with `insert-current-date-time' func
See help of `format-time-string' for possible replacements")

(defvar current-date-time-format-short "%Y %b %d %H:%M -"
  "Format of date to insert with `insert-current-date-time' func
See help of `format-time-string' for possible replacements")

(defun bil/insert-current-date-time ()
  "insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
  (interactive)
  (end-of-buffer)
       (insert "\n\n==========\n")
       (insert (format-time-string current-date-time-format (current-time)))
       (insert "\n\n\t"))

(defun bil/insert-timestamp ()
  "insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
  (interactive)
  (insert (format-time-string current-date-time-format-short (current-time))))

(provide 'my-snippets)
