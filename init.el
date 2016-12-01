;;restore desktop from the standard save file ~/.emacs.d/init.el
(desktop-read)
(setq desktop-restore-frames t)
(setq desktop-restore-in-current-display t)
(setq desktop-restore-forces-onscreen nil)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'auto-complete-config)
(ac-config-default)
;; (setq ac-auto-start 1)

(setq confirm-kill-emacs 'y-or-n-p)

;; ido mode for buffer autocomplete
(ido-mode 1)
 ;;create new buffer always
(setq ido-create-new-buffer 'always)
(require 'ido-ubiquitous)
;;
(setq ido-everywhere t)

;; M-x
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;;electric indent mode for indentation
(electric-indent-mode 1)

;;Remove the splash screen
(setq inhibit-splash-screen t)

;; shows current selected region
(setq-default transient-mark-mode t)

;;set path for ispell
(setq ispell-program-name "/usr/bin/ispell")

;;path init for terminal
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;start fly-spell by default -- TODO
(flyspell-mode 1)

;; flyspell files -- TODO
(load "~/.emacs.d/flyspell-init.el")

;; font highlight
(global-font-lock-mode t)

;; use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; initialize shortcuts to webpages
(load "~/.emacs.d/browser-search.el")

;; initialize dictionary
(load "~/.emacs.d/dictionary-init")

;;save layout -- TODO
;;(load "~/.emacs.d/layout-restore")

;; matlab mode init  -- TODO
 (autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
 (add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
 (setq matlab-indent-function t)
 (setq matlab-shell-command "matlab")


;; org Mode
(require 'org-list)

;; bitlbee initialize
(load "~/.emacs.d/chat_along.el")

;; weechat init
(require 'weechat)

;; line numbers
(global-linum-mode 1)

;; hl-line-mode
(global-hl-line-mode 1)

;; FIXME mode
(fic-mode 1)
(add-hook 'prog-mode-hook     'fic-mode)
(add-hook 'enh-ruby-mode-hook 'fic-mode)
(add-hook 'js2-mode-hook      'fic-mode)

;; zoom mode
(global-set-key (kbd "C-x C-a") 'zoom-window-zoom)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; anaconda backend to company mode
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

;; anaconda mode
(add-hook 'python-mode-hook 'anaconda-mode)

;; group anaconda mode suggestions with company-mode suggestions
(eval-after-load "company"
 '(add-to-list 'company-backends '(company-anaconda :with company-capf)))









(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#313131" "#D9A0A0" "#8CAC8C" "#FDECBC" "#99DDE0" "#E090C7" "#A0EDF0" "#DCDCCC"])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("1ac9a474d289e6a44894d1b484b3aa5eb345cea6ed6f32ec5214c797ac7ddf23" "4c0ca36491835b270549ed8c14590173df08e5c38465d747e5431ba5a490ccf2" "adbe7ba38c551281f21d760de0840cab0e1259964075a7e46cc2b9fdea4b82d6" "fcbd15014e7b8f2fc8c565f0c374ce7813dcad83b1aea5c547e144edbbcd51f8" "c7c59b971750a2d971ebfc4a28d0a39442df3b919e2a65d34d95bbe1707370c0" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" default)))
 '(custom-theme-load-path
   (quote
    ("/home/chahuja/.emacs.d/elpa/hc-zenburn-theme-20150928.933/" "/home/chahuja/.emacs.d/elpa/zenburn-theme-20161018.437/" custom-theme-directory t "~/.emacs.d/themes")))
 '(fci-rule-character-color "#192028")
 '(fci-rule-color "#5E5E5E")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files (quote ("~/Desktop/test_todo.org")))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#202020")
 '(vc-annotate-color-map
   (quote
    ((20 . "#C99090")
     (40 . "#D9A0A0")
     (60 . "#ECBC9C")
     (80 . "#DDCC9C")
     (100 . "#EDDCAC")
     (120 . "#FDECBC")
     (140 . "#6C8C6C")
     (160 . "#8CAC8C")
     (180 . "#9CBF9C")
     (200 . "#ACD2AC")
     (220 . "#BCE5BC")
     (240 . "#CCF8CC")
     (260 . "#A0EDF0")
     (280 . "#79ADB0")
     (300 . "#89C5C8")
     (320 . "#99DDE0")
     (340 . "#9CC7FB")
     (360 . "#E090C7"))))
 '(vc-annotate-very-old-color "#E090C7"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
