;;
;; Load the various modes
;;

(require 'cl)

(loop for file in (directory-files "~/.emacs.d/config/modes" t "\\.el$")
      do (load file nil nil t))

(provide 'config-modes)
