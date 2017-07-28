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

;; Create function for activating nvm

(defun my-nvm-use (&optional version)
  (interactive)
  ;; (nvm-use version)
  )

(defun do-venv-workon (&optional name)
  "Interactively switch to virtualenv NAME. Prompts for name if called
interactively."
  (interactive)
  ;; if without argument, read from user
  (unless name
    (setq name (venv-read-name
                (if venv-current-name
                    (format "Choose a virtualenv (currently %s): " venv-current-name)
                  "Choose a virtualenv: "))))
  ;; validate name
  (when (not (venv-is-valid name))
    (error (format "Invalid virtualenv %s specified!" name)))
  ;; then deactivate
  (venv-deactivate)
  ;; then switch
  (setq venv-current-name name)
  ;; push it onto the history
  (add-to-list 'venv-history venv-current-name)
  ;; actually activate it
  (venv--activate-dir (venv-name-to-dir venv-current-name))
  (when (called-interactively-p 'interactive)
    (message (concat "Switched to virtualenv: " venv-current-name))))
