;; 
;; Emacs Konfiguration
;;

(add-to-list 'load-path "~/.emacs.d/config")

(require 'config-bootstrap) ;; lade Package informationen
                            ;; und installiere Pakete
(require 'config-utils)     ;; lade Utility Functions
(require 'config-basic)     ;; lade Basis Konfiguration
(require 'config-modeline)  ;; lade modeline Konfiguration
(require 'config-themes)    ;; lade Themes und Font Config
(require 'config-modes)     ;; lade Modes und Plugins

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "49de25b465bc3c2498bcd4c1575fa0090bd56fc79cdb49b919b49eaea17ee1dd" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "0aa12caf6127772c1a38f7966de8258e7a0651fb6f7220d0bbb3a0232fba967f" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
