;; Org mode settings

(use-package org
  :bind
  (("C-c l" . org-store-link)
   ("C-c a" . org-agenda))
  :config
  (setq org-todo-keywords
        '((sequence "TODO" "DOING" "DONE")))
  (setq org-log-done t)
  (setq org-hide-leading-stars t)
  (setq org-odd-levels-only t)
  (setq org-agenda-files
	(list "~/org"
	      "~/org/learning"
	      "~/org/management"
	      "~/org/meetings"
	      "~/org/notes"))
  (setq org-format-latex-options
        (plist-put org-format-latex-options
                   :scale 2)))

;(use-package org-link-minor-mode)

;;; LaTeX preview

;; References: https://orgmode.org/worg/org-tutorials/org-latex-preview.html

;; Machine setup
;; sudo apt install texlive-latex-base texlive-latex-extra dvipng

;; Scale up rendered snippets
;(plist-put org-format-latex-options :scale 1.5)

