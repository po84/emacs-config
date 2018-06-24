;;; init-000-core-base.el --- Customize emacs basic functionalities

;; Copyright (C) 2018 Po Tong

;; Author: Po Tong
;; Maintaainer: Po Tong
;; Created: 2018-06-24

;; Keywords: emacs, use-package, configuration

;;; Commentary

;;; Code:
(require 'use-package)

;; Emacs starts out with a black buffer
(setq inhibit-splash-screen t
      initial-scratch-message nil)

;; Turn dinging off
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; Turn off menu bar, tool bar, and scroll bar
(if window-system (scroll-bar-mode -1))
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Backup files setup
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 `((".*" . ,temporary-file-directory)) ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

;; Load custom theme - Spacemacs-dark
(use-package spacemacs-common
  :ensure spacemacs-theme
  :config (load-theme 'spacemacs-dark t))

;; Customize the modeline
(use-package spaceline-config
  :after spaceline
  :config (spaceline-emacs-theme))

;;; init-000-core-base.el ends here
