;; ;; 
;; ;; ido Mode
;; ;;

;; ;; ido-mode ist in Emacs enthalen, also kein (require) notwendig

;; ;; load ido-vertical-mode
;; (add-to-list 'load-path "~/.emacs.d/plugins/ido-vertical-mode")
;; (require 'ido-vertical-mode)

;; (setq ido-enable-flex-matchint t)

;; (setq ido-everywhere t)

;; ;; ido soll nicht nach ähnlichen Dateien suchen
;; ;; z.B. bei der Neuanlage
;; (setq ido-auto-merge-work-directories-length -1)

;; (ido-mode 1)
;; (ido-vertical-mode 1)

;; (require 'ido-ubiquitous)
;; (ido-ubiquitous-mode 1)

;; (require 'flx-ido)
;; (flx-ido-mode 1)
