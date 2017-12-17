(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(load-file "~/.emacs.d/elpa/seq-2.20/seq-25.el")

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar modules-to-import
  '(evil
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    paredit
    seq
    clj-refactor
    cljr-helm
    align-cljlet
    rainbow-delimiters
    projectile
    helm-projectile
    company
    zenburn-theme
    magit
    spotify
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
(projectile-global-mode)
(show-paren-mode 1)
(load-theme 'zenburn t)
(global-company-mode)
(toggle-frame-fullscreen)


;; Clojure

(require 'clj-refactor)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(with-eval-after-load 'clojure-mode
  (add-hook 'clojure-mode-hook       #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook       #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook       (lambda ()
				       (clj-refactor-mode 1)
				       (yas-minor-mode 1)
				       (local-set-key (kbd "C-c C-r") #'cljr-helm)))

  (setq cider-debug-prompt 'minibuffer)
  (setq cider-test-defining-forms (add-to-list 'cider-test-defining-forms "deftest-with-api-versions"))

  (global-set-key (kbd "M-TAB") #'company-complete) ; use M-TAB, a.k.a. C-M-i, as manual trigger
  (define-key evil-normal-state-map (kbd "M-.") nil) ; override evil undo
  (local-unset-key (kbd "M-.")) ; override etags

  (setq cljr-magic-requires :prompt)
  (cljr-add-keybindings-with-prefix "\C-c r")) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (json-mode yaml-mode markdown-mode zenburn-theme solarized-theme scss-mode rainbow-delimiters puppet-mode mustache-mode magit helm-projectile goto-last-change exec-path-from-shell evil dracula-theme diminish company clojure-mode-extra-font-locking cljr-helm align-cljlet ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
