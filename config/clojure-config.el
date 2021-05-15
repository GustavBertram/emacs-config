;;; CLOJURE 

;; From: https://github.com/clojure-emacs/clj-refactor.el
(use-package clj-refactor)

(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

;;; cider-refresh setup: https://lambdaisland.com/blog/2018-02-09-reloading-woes

;; cider-refresh was renamed to cider-ns-refresh.
;; (https://github.com/clojure-emacs/cider/blob/master/CHANGELOG.md)

;; The cider-refresh-before-fn hooks won't work.
;; They're trying to connect to an alias instead of the new function name.

;; reloaded.repl
(setq  cider-ns-refresh-before-fn "reloaded.repl/suspend")
(setq  cider-ns-refresh-after-fn "reloaded.repl/resume")

;; integrant-repl
(setq  cider-ns-refresh-before-fn "integrant.repl/suspend")
(setq  cider-ns-refresh-after-fn "integrant.repl/resume")
