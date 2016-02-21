;;
;; Theme und Font Config
;;

;; Font Face setzen
;;(set-face-font 'default (font-spec :family "Consolas" :size 15))

;;(setq sra/font-family "Consolas")
(setq sra/font-family "Source Code Pro")

(set-frame-font sra/font-family)
;;(set-face-attribute 'default nil :font sra/font-family :height 110)
(set-face-attribute 'default nil :font sra/font-family :height 105)
(set-face-font 'default sra/font-family)


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'holtorf t)
;;(load-theme 'material t)
(load-theme 'spacemacs-dark t)

(provide 'config-themes)
