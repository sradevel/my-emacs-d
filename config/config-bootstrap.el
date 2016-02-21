;; Bootstrap Emacs Setup
;;

(defvar sra/packagelist '(ace-jump-buffer
                        ace-window
                        autopair
                        company
                        elfeed
                        dired+
                        emmet-mode
                        idle-highlight-mode
                        ido-vertical-mode
                        ido-ubiquitous
                        flx-ido
                        multiple-cursors
                        org
                        org-bullets
                        rainbow-delimiters
                        rainbow-mode
                        slime
                        slime-company
                        smex
                        clojure-mode
                        clojure-cheatsheet
                        fsharp-mode
                        helm
                        hydra
                        js2-mode
                        key-chord
                        magit
                        markdown-mode
                        material-theme
                        spacemacs-theme
                        paredit
                        sicp
                        restclient
                        powerline))

(defun sra/bootstrap ()
  "Bootstraps the Emacs installation."
  (mapc (lambda (p) (unless (package-installed-p p)
                      (package-install p))) sra/packagelist))


;Load package.el
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") 
             t)
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(sra/bootstrap)

(provide 'config-bootstrap)
