;; Initialize package system
(require 'package) ;; package.el


;; repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))  
(package-initialize)
(package-refresh-contents)

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

;; Install and configure use-package
;;(unless (package-installed-p 'use-package)
;;  (package-install 'use-package))
;;(require 'use-package)

;; Configure use-package to automatically install packages if missing
;;(setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" default))
 '(org-agenda-files '("/home/shatterstone/notes/TODO.org"))
 '(org-safe-remote-resources
   '("\\`https://gitlab\\.com\\(?:/\\|\\'\\)" "\\`https://fniessen\\.github\\.io\\(?:/\\|\\'\\)"))
 '(package-selected-packages
   '(go-mode org-auto-tangle auto-complete telephone-line gnu-elpa-keyring-update poly-markdown which-key vterm toc-org tldr sudo-edit rainbow-mode rainbow-delimiters org-bullets neotree markdown-preview-mode lua-mode hl-todo haskell-mode general flycheck evil-tutor evil-collection emms elfeed-goodies doom-themes doom-modeline diminish dashboard counsel company-box beacon all-the-icons-ivy-rich all-the-icons-dired)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.7))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.6))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.5))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 1.3))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :height 1.2))))
 '(markdown-header-face-7 ((t (:inherit markdown-header-face :height 1.1))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.4))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.3))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1))))
 '(org-level-8 ((t (:inherit outline-5 :height 1.1)))))
