(autoload 'wcheck-mode "wcheck-mode"
  "Toggle wcheck-mode." t)
(autoload 'wcheck-change-language "wcheck-mode"
  "Switch wcheck-mode languages." t)
(autoload 'wcheck-actions "wcheck-mode"
  "Open actions menu." t)
(autoload 'wcheck-jump-forward "wcheck-mode"
  "Move point forward to next marked text area." t)
(autoload 'wcheck-jump-backward "wcheck-mode"
  "Move point backward to previous marked text area." t)


;; language data
(setq wcheck-language-data
      '(("British English"
 (program . "/usr/local/bin/ispell")
 (args "-l" "-d" "british")
 (action-program . "/usr/local/bin/ispell")
 (action-args "-a" "-d" "british")
 (action-parser . wcheck-parser-ispell-suggestions)))
