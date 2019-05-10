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
	      "~/org/notes")))
