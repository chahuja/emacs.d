
;; popup in flyspell 
(eval-after-load "flyspell"
      '(progn
         (fset 'flyspell-emacs-popup 'flyspell-emacs-popup-textual)))

;; text mode flyspell
(dolist (hook '(text-mode-hook))
      (add-hook hook (lambda () (flyspell-mode 1))))
    (dolist (hook '(change-log-mode-hook log-edit-mode-hook))
      (add-hook hook (lambda () (flyspell-mode -1))))

;; comments in programming
(add-hook 'c++-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            ; ...
          ))


;;latex support
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
