(require 'package)

(defvar config-dir (expand-file-name "config" user-emacs-directory))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar modules-to-import
  '(evil
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    paredit
    clj-refactor
    cljr-helm
    align-cljlet
    rainbow-delimiters
    projectile
    helm-projectile
    magit))

(if (eq system-type 'darwin)
    (add-to-list 'modules-to-import 'exec-path-from-shell))

(dolist (p modules-to-import)
  (when (not (package-installed-p p))
    (package-install p)))

;; Global opts
(evil-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(projectile-global-mode)
(show-paren-mode 1)
(load-theme 'dracula t)

;; Clojure
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(with-eval-after-load 'clojure-mode
  (add-hook 'clojure-mode-hook       #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook       #'rainbow-delimiters-mode)
  (define-key evil-normal-state-map (kbd "M-.") nil)
  (global-unset-key (kbd "M-.")))

