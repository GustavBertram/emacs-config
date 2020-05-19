;; From: https://emacs.stackexchange.com/a/38579/14948

(use-package yafolding
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'yafolding-mode))

