(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-archive-priorities
      '(("melpa-stable" . 50)
        ("melpa" . 20)))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar modules-to-import
  '(evil
    smart-mode-line
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    paredit
    seq
    align-cljlet
    rainbow-delimiters
    projectile
    helm-projectile
    company
    zenburn-theme
    magit
    json-mode))

(if (eq system-type 'darwin)
    (add-to-list 'modules-to-import 'exec-path-from-shell))

(dolist (p modules-to-import)
  (when (not (package-installed-p p))
    (package-install p)))

;; Global opts
(evil-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)
(load-theme 'zenburn t)
(sml/setup)
(global-company-mode)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Clojure

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(with-eval-after-load 'clojure-mode
  (add-hook 'clojure-mode-hook       #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook       #'rainbow-delimiters-mode)

  (setq cider-refresh-show-log-buffer t)
  (setq cider-debug-prompt 'minibuffer)
  (setq cider-repl-display-help-banner nil)

  (global-set-key (kbd "M-TAB") #'company-complete) ; use M-TAB, a.k.a. C-M-i, as manual trigger
  (define-key evil-normal-state-map (kbd "M-.") nil) ; override evil undo
  (local-unset-key (kbd "M-.")) ; override etags
 )