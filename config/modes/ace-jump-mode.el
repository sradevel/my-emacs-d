;; ace jump mode

(add-to-list 'load-path "~/.emacs.d/plugins/ace-jump-mode")

(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
   t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

