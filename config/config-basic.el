;;
;; Basis Konfiguration
;;

;; set the cursor to bar (vertical line)
(set-default 'cursor-type 'box)

;; dont show welcome screen and empty the scratch buffer
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; no backup file, and auto save
(setq-default make-backup-files nil)
(setq auto-save-default nil)

;; set frame size
(if window-system
      (set-frame-size (selected-frame) 80 35))

;; turn on syntax hilight
(global-font-lock-mode t)

;; remove toolbar/menu bar/scroll bar
(tool-bar-mode 0)
;(menu-bar-mode 0)
(set-scroll-bar-mode nil)

; text-mode automtic line break (fill mode) after 78 chars
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq fill-column 78)

;; show clock at statusline
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; Frame Title Format
(setq frame-title-format '("Emacs @ " "%b"))

;; show column number in mode line
(setq column-number-mode t)

;; show parent
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; hilight mark area
(transient-mark-mode t)

;; don't ring at error
(setq ring-bell-function 'ignore)
(setq visible-bell 'top-bottom)

;; can use the narrow to region
(put 'narrow-to-region 'disabled nil)

;; use mouse to copy thing automatically
(setq mouse-drag-copy-region t)

;; move mouse when cursor is close to it
;(mouse-avoidance-mode 'animate)
(mouse-avoidance-mode 'none)

;; use y --> yes
(fset 'yes-or-no-p 'y-or-n-p)

;; encoding
;;(set-language-environment 'UTF-8)

;; setup up a big kill-ring, so i will never miss anything:-)
(setq kill-ring-max 100)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 3)))   ;; one line at a time
(setq mouse-wheel-progressive-speed nil)              ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)                    ;; scroll window under mouse
(setq scroll-step 1)                                  ;; keyboard scroll one line at a time
(setq scroll-margin 0)                                ;; stop autoscroll when mouse is close to margin

;; not use tab, use space to indent
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(electric-indent-mode +1)

;; override region
(delete-selection-mode 1)


;; Tramp should use ssh over scp
(setq tramp-default-method "ssh")
(setq tramp-chunksize 500)

(require 'server)
(if (not (server-running-p)) (server-start))

(provide 'config-basic)
