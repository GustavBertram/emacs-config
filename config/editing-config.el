;;; editing config

;(load-theme 'tango-dark)

;; Set offset to 2
(setq c-default-style "k&r"
      c-basic-offset 2)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Show column numbers
(setq column-number-mode t)

;; Highlight parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Hide startup screen
(setq inhibit-startup-screen t)

;; Hide scratch message
(setq initial-scratch-message nil)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Set the font
; (set-frame-font "Source Code Pro") 

;; Hide the toolbar
(tool-bar-mode -1)

;; Show full filename in title bar
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Enable MoveText
(use-package move-text
  :ensure t
  :config
  (move-text-default-bindings))
