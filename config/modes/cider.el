;;
;; cider Mode
;;

;; (add-to-list 'load-path "~/.emacs.d/elpa/cider")

(require 'cider)
(add-hook 'clojure-mode-hook 'cider-mode)
