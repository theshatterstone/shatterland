;;; Shatterland-Dark-theme.el --- Shatterland-Dark Theme

;; Copyright (C) 2024 , Aleks Gerenski (theshatterstone)

;; Author: Aleks Gerenski (theshatterstone)
;; Version: 0.1
;;; Commentary:
;;; Shatterland-Dark theme created by Aleks Gerenski (theshatterstone) in 2024

;;; Code:

(deftheme Shatterland-Dark "DOCSTRING for Shatterland-Dark")
  (custom-theme-set-faces 'Shatterland-Dark
   '(default ((t (:foreground "#51afef" :background "#282c34" ))))
   '(cursor ((t (:background "#dfdfdf" ))))
   ;; The border around the Emacs window
   '(fringe ((t (:background "#282c34" ))))
   '(mode-line ((t (:foreground "#51afef" :background "#22222f" ))))
   ;; The highlighted area
   '(region ((t (:background "#494949" ))))
   '(secondary-selection ((t (:background "#3e3834" ))))
   '(font-lock-builtin-face ((t (:foreground "#81b4ce" ))))
   '(font-lock-comment-face ((t (:foreground "#6f6f6f" ))))
   '(font-lock-function-name-face ((t (:foreground "#06989a" ))))
   '(font-lock-keyword-face ((t (:foreground "#51afef" ))))
   '(font-lock-string-face ((t (:foreground "#93e0e3" ))))
   '(font-lock-type-face ((t (:foreground "#d4d4d4" ))))
   '(font-lock-constant-face ((t (:foreground "#208bf0" ))))
   '(font-lock-variable-name-face ((t (:foreground "#208bf0" ))))
   '(minibuffer-prompt ((t (:foreground "#51afef" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "#ff0000" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'Shatterland-Dark)

;;; Shatterland-Dark-theme.el ends here
