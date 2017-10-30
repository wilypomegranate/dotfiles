(defconst my-spacemacs-packages
  '(
    virtualenvwrapper
    nord-theme
    )
  )

;; TRAMP mode remote shell config
(setq tramp-shell-prompt-pattern "\\(?:^\\|\r\\)[^]#$%>\n]*#?[]#$%>].* *\\(^[\\[[0-9;]*[a-zA-Z] *\\)*")

;; Use eww by default
(setq browse-url-browser-function 'eww-browse-url)

;; org agenda settings
(setq org-agenda-files (list "~/org/schedule.org"
                             "~/org/notes.org"))

(defun my-spacemacs/init-virtualenvwrapper()
  (use-package virtualenvwrapper)
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell)
  (setq venv-location "~/venvs")
  ;; This is to disable projectile for TRAMP
  ;; TODO - Should be moved to init for projectile elsewhere
  (setq projectile-mode-line "Projectile")
  )

(defun my-spacemacs/init-nord-theme()
  (use-package nord-theme)
  )

;; (defun nvm-extract-version (nvm_info)
;;   (nvm-extract-version (cdr nvm_info))
;;   (car nvm_info)
;;   )

  ;; (when versions
  ;;   (nvm-extract-version versions)
  ;;   )
 ;; (cons (nvm--installed-versions) (nvm-extract-version(nvm--installed-versions)))
