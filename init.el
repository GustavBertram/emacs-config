;;; PACKAGE SETUP

(require 'package)
(setq package-enable-at-startup nil)

;; Define package repositories
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; (add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Auto-install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; CUSTOM VARIABLES

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Theme
(load-theme 'tango-dark)

;;; SETTINGS

(add-to-list 'load-path "~/.emacs.d/config/")

;; Add to path on mac
(if (eq system-type 'darwin)
    (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin")))

;; Emacs settings
(load "editing-config.el")
(load "backup-config.el")
(load "editorconfig-config.el")

;; Package settings
(load "org-config.el")
(load "babel-config.el")
(load "git-config.el")
;(load "ruby-config.el")
(load "project-config.el")
(load "common-lisp-config.el")
;(load "yafolding-config.el")
;(load "clojure-config.el")


