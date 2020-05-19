;;; HELM
(add-to-list 'exec-path "/usr/local/bin/")

(use-package helm
  :ensure t
  :bind
  ("M-x" . helm-M-x))

(use-package helm-projectile
  :ensure t
  :bind
  ("s-f" . helm-projectile-find-file-dwim)) ; find File

(use-package helm-ag
  :ensure t
  :bind ("s-t" . helm-projectile-ag)) ; search Text

