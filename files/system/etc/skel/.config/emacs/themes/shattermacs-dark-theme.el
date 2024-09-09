;;; Shattermacs-Dark --- Summary
;;; Commentary:
;;; Code:

(deftheme shattermacs-dark
  "A dark theme centered around the color blue (51afef).")

(let ((blue-primary "#51afef")
      (bg-primary "#282c34")
      (bg-secondary "#1c1f24")
      (bg-secondary-darker "#21252b") ; Bit Darker colour for Code Blocks in Orgmode
      (fg-primary "#abb2bf")
      (fg-secondary "#5c6370")
      (blue-secondary "#569cd6")
      (blue-tertiary "#46d9ff")
      (blue-quaternary "#0f7ecc")
      (blue-quinary "#1f5582") ; Re-added blue-quinary color
      (selection-color "#e0e0e0"))

  (custom-theme-set-faces
   'shattermacs-dark

   ;; Default colors
   `(default ((t (:foreground ,fg-primary :background ,bg-primary))))
   `(cursor ((t (:background ,fg-primary))))
   `(fringe ((t (:background ,bg-primary))))
   `(highlight ((t (:background ,bg-secondary))))
   `(region ((t (:background ,selection-color :foreground ,fg-primary))))
   `(secondary-selection ((t (:background ,bg-secondary))))
   `(minibuffer-prompt ((t (:foreground ,blue-primary))))

   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground ,blue-primary))))
   `(font-lock-comment-face ((t (:foreground ,fg-secondary))))
   `(font-lock-constant-face ((t (:foreground ,blue-primary))))
   `(font-lock-function-name-face ((t (:foreground ,blue-primary))))
   `(font-lock-keyword-face ((t (:foreground ,blue-primary))))
   `(font-lock-string-face ((t (:foreground ,blue-primary))))
   `(font-lock-type-face ((t (:foreground ,blue-primary))))
   `(font-lock-variable-name-face ((t (:foreground ,blue-primary))))
   `(font-lock-warning-face ((t (:foreground ,blue-primary :bold t))))

   ;; Mode line
   `(mode-line ((t (:background ,bg-secondary :foreground ,fg-primary))))
   `(mode-line-inactive ((t (:background ,bg-primary :foreground ,fg-secondary))))

   ;; Org Mode
   `(org-level-1 ((t (:foreground ,blue-primary :bold t))))
   `(org-level-2 ((t (:foreground ,blue-secondary :bold t))))
   `(org-level-3 ((t (:foreground ,blue-tertiary :bold t))))
   `(org-level-4 ((t (:foreground ,blue-quaternary :bold t))))
   `(org-level-5 ((t (:foreground ,blue-quaternary :bold t))))
   `(org-level-6 ((t (:foreground ,blue-primary :bold t))))
   `(org-level-7 ((t (:foreground ,blue-primary :bold t))))
   `(org-level-8 ((t (:foreground ,blue-primary :bold t))))
   `(org-block ((t (:extend t :background ,bg-secondary-darker)))) ; Adjusted background for source blocks
   `(org-block-begin-line ((t (:extend t :background ,bg-secondary-darker :foreground ,fg-secondary )))) ; Adjusted background for the begin-src line of source blocks
   `(org-block-end-line ((t (:extend t :background ,bg-secondary-darker :foreground ,fg-secondary )))) ; Adjusted background for the end-src line of source blocks

   ;; 
 '(ac-candidate-face ((t (:background "gray20" :foreground "white"))))
 '(ac-selection-face ((t (:background "steelblue" :foreground "white"))))
   `(mode-line ((t (:background ,bg-secondary :foreground ,fg-primary))))
   ;; Rainbow Delimiters (optional, requires rainbow-delimiters package)
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,blue-primary))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,blue-secondary))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,blue-tertiary))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,blue-quaternary))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,blue-quaternary))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,blue-primary))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,blue-primary))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,blue-primary))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,blue-primary)))))

(defface telephone-evil
  '((t (:foreground "#282c34" :weight bold :background "#467b96")))
  "Meta-face used for property inheritance on all telephone-line-evil faces."
  :group 'telephone-evil)

(defface telephone-evil-insert
  '((t (:background "#46d9ff" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Insert state."
  :group 'telephone-evil)

(defface telephone-evil-normal
  '((t (:background "#51afef" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Normal state."
  :group 'telephone-evil)

(defface telephone-evil-visual
  '((t (:background "#41fdfe" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Visual{,-Block,-Line} state."
  :group 'telephone-evil)

(defface telephone-evil-replace
  '((t (:background "#0f7ecc" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Replace state."
  :group 'telephone-evil)

(defface telephone-evil-motion
  '((t (:background "dark blue" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Motion state."
  :group 'telephone-evil)

(defface telephone-evil-operator
  '((t (:background "violet" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Operator state."
  :group 'telephone-evil)

(defface telephone-evil-emacs
  '((t (:background "dark violet" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in Emacs state."
  :group 'telephone-evil)

(defface telephone-evil-god
  '((t (:background "sky blue" :inherit telephone-evil)))
  "Face used in evil color-coded segments when in God state.

God state is provided by the package evil-god-state."
  :group 'telephone-evil)

(defun telephone-line-modal-face (active)
  "Return an appropriate face for the current mode, given whether the frame is ACTIVE."
  (cond ((not active) 'mode-line-inactive)
        ((bound-and-true-p xah-fly-keys)
         (if xah-fly-insert-state-p
             'telephone-line-evil-insert
           'telephone-line-evil-normal))
        ((not (bound-and-true-p evil-mode)) 'mode-line)
        (t (intern (concat "telephone-evil-" (symbol-name evil-state))))))


  (custom-theme-set-variables
   'shattermacs-dark)

  (provide-theme 'shattermacs-dark))

(provide 'shattermacs-dark-theme)
;; shattermacs-dark-theme.el ends here
