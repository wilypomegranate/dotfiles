(defconst my-spacemacs-packages
  '(
    virtualenvwrapper
    nvm)
  )

(defun my-spacemacs/init-virtualenvwrapper()
  (use-package virtualenvwrapper)
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell)
  (setq venv-location "~/venvs")
  ;; This is to disable projectile for TRAMP
  ;; TODO - Should be moved to init for projectile elsewhere
  (setq projectile-mode-line "Projectile")
  )

(defun my-spacemacs/init-nvm()
  (use-package nvm)
  )

;; TODO - Move nvm to a layer

;; (defun nvm-extract-version (nvm_info)
;;   (nvm-extract-version (cdr nvm_info))
;;   (car nvm_info)
;;   )

(defun nvm-list-version ()
  (let (value)
    (dolist (element (nvm--installed-versions) value)
      (setq value (cons (car element) value))
      )
    )
  )
  ;; (when versions
  ;;   (nvm-extract-version versions)
  ;;   )
 ;; (cons (nvm--installed-versions) (nvm-extract-version(nvm--installed-versions)))

(defun my-nvm-use (&optional version)
  "Activate a nvm version. Prompts if version not passed in."
  (interactive)
  ;; (message "nvm version %s" (read-string "Enter your name:"))
  ;; (let (candidates (nvm-list-version))
  ;;   (completing-read prompt
  ;;                    candidates nil t nil
  ;;                    )
  ;;   )
  ;; (let (candidates (nvm-list-version))
  ;;   (print candidates)
  ;;   )
  (unless version
    (setq version (completing-read "Choose nvm version: " (nvm-list-version)))
    )
  (nvm-use version)
  )
