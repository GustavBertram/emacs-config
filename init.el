;;; PACKAGE SETUP

(require 'package)

;; Define package repositories
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; (add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)


;;; CUSTOM VARIABLES

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("f10aa29e86054daf7d0a1bd9465ac41da644ccd1b70f3012e58be60c3622ed60" default)))
 '(package-selected-packages
   (quote
    (magit clj-refactor org-link-minor-mode htmlize org csharp-mode cider clojure-mode slime markdown-mode)))
 '(safe-local-variable-values
   (quote
    ((cider-ns-refresh-after-fn . "integrant.repl/resume")
     (cider-ns-refresh-before-fn . "integrant.repl/suspend")
     (cider-refresh-after-fn . "integrant.repl/resume")
     (cider-refresh-before-fn . "integrant.repl/suspend"))))
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Theme
(load-theme 'tango)

;;; SETTINGS

(add-to-list 'load-path "~/.emacs.d/config/")

;; Emacs settings
(load "editing-config.el")
(load "backup-config.el")

;; Package settings
(load "org-config.el")
(load "babel-config.el")
;(load "cl-config.el")
;(load "clojure-config.el")
(load "ruby-config.el")


