(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(require 'evil)
(evil-mode t)

(load-theme 'solarized-dark t)
(set-frame-font "Fira Code 18")
(tool-bar-mode -1)
(scroll-bar-mode -1)

(sml/setup)
(setq sml/theme 'dark)

; (require 'powerline)
; (powerline-default-theme)

; (setq-default custom-safe-themes t)

; (require 'airline-themes)
; (load-theme 'airline-dark)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "28130127bbf3072c1bbc7652fca7245f186bb417b3b385a5e4da57b895ffe9d8" default)))
 '(package-selected-packages
   (quote
    (solarized-theme smart-mode-line-powerline-theme smart-mode-line airline-themes powerline monokai-theme cider evil-visual-mark-mode))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
