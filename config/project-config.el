;;; HELM
(add-to-list 'exec-path "/usr/local/bin/")

(use-package helm
  :bind
  (("M-x" . helm-M-x)
   ("s-t" . helm-projectile-ag) ; search Text
   ("s-f" . helm-projectile-find-file-dwim))) ; find File
