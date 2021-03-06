;; Ruby setup for Emacs from:
;; - https://worace.works/2016/06/07/getting-started-with-emacs-for-ruby/
;; - https://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/

;;; EDITOR SETTINGS

;; Show line numbers
;(global-linum-mode)

;; Autoclose paired syntax elements like parens, quotes, etc
;(add-hook 'ruby-mode-hook 'ruby-electric-mode)

;; Set Ruby indent mode
(setq ruby-indent-level 2)

;; Set up Ruby file extensions
(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))


;;; RVM
(use-package rvm
  :ensure t
  :config
  (rvm-use-default))


;;; DASH
(if (eq system-type 'darwin)
    (use-package dash-at-point
      :bind
      ("\C-c d" . dash-at-point)
      
      :init
      (autoload 'dash-at-point "dash-at-point" "Search the word at point with Dash." t nil)
      (add-to-list 'dash-at-point-mode-alist '(ruby-mode . "ruby"))))


;;; ROBE
(use-package robe
  :ensure t

  :init
  (add-hook 'ruby-mode-hook 'robe-mode)

  :config
  (defadvice inf-ruby-console-auto
    (before activate-rvm-for-robe activate)
    (rvm-activate-corresponding-ruby)))  

;;; RUBOCOP
(use-package rubocop
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'rubocop-mode))
