;;
;; Util Functions
;;

;; 
;; Duplizieren der aktuellen Zeile und binden an 
;; die Tastenkombination C-c C-d
;;
(defun sra/duplicate-line() 
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c C-d") 'sra/duplicate-line)

(defun sra/smart-open-line-above()
  "Insert an empty line above the current line and smart indents
accordingly to the current buffer major-mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(control shift return)] 'sra/smart-open-line-above)

;; Google Search
;; http://emacsredux.com/blog/2013/03/28/google/
(defun sra/google ()
  "Search Google for the active region or prompt for a query"
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=oe=utf-8&q="
    (url-hexify-string (if mark-active
                           (buffer-substring (region-beginning) (region-end))
                         (read-string "Google: "))))))

(global-set-key (kbd "C-c g") 'sra/google)

(defun sra/get-string-from-file (filePath)
  "Read  filePath's contents into a string."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))

(provide 'config-utils)
