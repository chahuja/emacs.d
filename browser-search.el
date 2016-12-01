
;; search google
(defun google ()
  "Google the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Google: "))))))
(global-set-key (kbd "C-c g") 'google)

;; search libgen
(defun libgen ()
  "Libgen the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://libgen.in/search.php?req="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Libgen: "))))))
(global-set-key (kbd "C-c b") 'libgen)

;; search youtube
(defun youtube ()
  "Youtube the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "https://www.youtube.com/results?search_query="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Youtube: "))))))
(global-set-key (kbd "C-c y") 'youtube)


;; webpage
(defun webpage ()
  "Webpage the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://"
    (url-hexify-string (read-string "Webpage(http://): ")))))
(global-set-key (kbd "C-c w") 'webpage)
