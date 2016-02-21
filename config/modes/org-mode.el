;;
;; org-mode Konfiguration
;;

(require 'org)

(add-to-list 'auto-mode-alist '("\\.\\(org\\|txt\\)$" . org-mode))

(setq org-agenda-files '())
(mapc (lambda (file)
        (if (file-exists-p file)
            (add-to-list 'org-agenda-files file t)))
      '("h:/Daten/org"
        "h:/Daten/org/Projekte"
        "h:/Daten/org/Checklisten"))

(setq org-directory "h:/Daten/org")

(setq org-agenda-window-setup 'current-window)
(setq org-default-notes-file "h:/Daten/org/refile.org")
(setq org-refile-targets '((nil :maxlevel . 9)
                           (org-agenda-files :maxlevel . 9)))

(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "DONE(d)" "DEFERRED(f)")
                          (sequence "AGENDA(a)")))
(setq org-use-fast-todo-selection t)

(org-add-link-type "outlook" 'org-outlook-open)

(defun org-outlook-open (id)
   "Open the Outlook item identified by ID.  ID should be an Outlook GUID."
   (w32-shell-execute "open" "outlook" (concat "outlook:" id)))


(setq org-todo-keyword-faces
      '(("TODO" :foreground "red" :weight bold)
        ("WAITING" :foreground "orange" :weight bold)
        ("DONE" :foreground "forest green" :weight bold)
        ("DEFERRED" :foreground "orange" :weight bold)
        ("AGENDA" :foreground "black" :weight bold)))
      

;; Agenda Customization
(setq org-agenda-custom-commands
      '(("!t" "T-Team JF Punkte" tags "+tteam+jf")
        ("!f" "SGL Themen" tags "+frank")
        ("!m" "Themen für den Chef" tags "+michaelb") 
        ("!s" "Sascha Bach" tags "+sascha")
        ("!w" "Rückmeldungen erwartet" (
                                        (todo "WAITING" (
                                                         (org-agenda-span 'month)
                                                         ))))))

(defvar template-alist
  '(("d" . "H:/Daten/org/Templates/datenabzuege.org")))

(mapc (lambda (cons)
        (if (file-exists-p (cdr cons))
            (add-to-list 'org-structure-template-alist
                         `(,(car cons) ,(sra/get-string-from-file (cdr cons)) ""))))
      template-alist)

;; Key-Bindings

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)



;; Clean View
(setq org-hide-leading-stars t)

;; electric-indent in Org Buffer verhindern
;; Quelle: http://foldl.me/2012/disabling-electric-indent-mode/
(add-hook 'org-mode-hook
          (lambda ()
            (set (make-local-variable 'electric-indent-functions)
                 (list (lambda (arg) 'no-indent)))))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

