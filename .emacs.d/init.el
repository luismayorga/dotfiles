(require 'package)

(defvar config-dir (expand-file-name "config" user-emacs-directory))

;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
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
    magit))

(if (eq system-type 'darwin)
    (add-to-list 'modules-to-import 'exec-path-from-shell))

(dolist (p modules-to-import)
  (when (not (package-installed-p p))
    (package-install p)))

;; Global opts
(evil-mode 1)
(menu-bar-mode -1)
(projectile-global-mode)
