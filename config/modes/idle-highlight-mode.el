;;
;; Idle Highlight Mode
;;

(require 'idle-highlight-mode)

(defun my-coding-hook ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t)
  (if window-system (hl-line-mode t))
  (idle-highlight-mode t))

(add-hook 'emacs-lisp-mode-hook 'my-coding-hook)
(add-hook 'js3-mode-hook 'my-coding-hook)
(add-hook 'clojure-mode-hook 'my-coding-hook)
