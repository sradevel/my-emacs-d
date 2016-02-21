;;
;; ace-window mode
;;
 
(add-to-list 'load-path "~/.emacs.d/plugins/ace-window")

(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)
