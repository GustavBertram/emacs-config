;;; HELM
(add-to-list 'exec-path "/usr/local/bin/")

(use-package helm
  :bind
  (("M-x" . helm-M-x)
   ("s-f" . helm-projectile-ag)
   ("s-t" . helm-projectile-find-file-dwim)))
