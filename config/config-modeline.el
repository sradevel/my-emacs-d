;;
;; Mode Line Configuration
;;

(defun ml-buffer-name ()
  '(:eval (propertize "%b" 'face 'mode-line-buffer-id
            'help-echo (buffer-file-name))))

(defun ml-read-write-indicator ()
  '(:eval (propertize (if buffer-read-only "R" "W"))))

(defun ml-ins-indicator ()
  '(:eval (propertize (if overwrite-mode "O" "I"))))

(setq-default mode-line-format
      (list
       ;; Indicator group
       " / "
       "%&" ;; buffer modified or not
       (ml-read-write-indicator)
       (ml-ins-indicator)
       " / "
       ;; Buffer Name    
       (ml-buffer-name)
       " [L%2l C%2c]"
       " -"
       '(:eval (propertize mode-name))
       "-"
       " /-"
       minor-mode-alist
       " -/ "
       global-mode-string
    ))

(powerline-default-theme)

(provide 'config-modeline)
