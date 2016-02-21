;;
;; JavaScript Mode
;;


(add-to-list 'load-path "~/.emacs.d/plugins/js3-mode")

(autoload 'js3-mode "js3-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

;; set auto-indent for Javascript Mode
(add-hook 'js3-mode-hook '(lambda() 
    (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'js3-mode-hook 'skewer-mode)

;; start auto-complete
(add-hook 'js3-mode-hook 'auto-complete-mode)

(setq js3-enter-indents-newline t)
(setq js3-indent-level 4)
(setq js3-indent-on-enter-key t)
;;(setq js3-expr-indent-offset 4)
;;(setq js3-paren-indent-offset 4)
;;(setq js3-square-indent-offset 4)
;;(setq js3-curly-indent-offset 4)
